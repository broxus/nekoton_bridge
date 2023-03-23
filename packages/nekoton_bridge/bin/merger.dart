import 'dart:io';

const mergedFileName = 'merged';

/// RegExp to parse all imports blocks
final importsReg = RegExp('.*use (?:.*?|\n)*?;');

/// RegExp to parse sub modules from single-line like:
/// crypto::mnemonic::models::KeypairHelper, models_api::GeneratedKeyG,
final cratesInSingleLineSpaceReg = RegExp(r', \w+::');

/// RegExp to parse all sub modules and direct imports from brackets { .. }
final subCratesParserReg =
    RegExp(r'((\w+::)+({.+}|\w+(,|)))|(\w+( \w+)*[^\w+::\w+])');

/// This runs automatically in the beginning of build.rs script
/// [Directory.current] must be /nekoton_bridge/native
void main() async {
  final nativeSrcDir = Directory('${Directory.current.path}/src');
  final mergedFile = File('${nativeSrcDir.path}/$mergedFileName.rs');
  final mergedFileSink = mergedFile.openWrite();

  final contentBuffer = StringBuffer();

  /// Collection of imported local crates in all *api.rs files.
  /// Key - name of global crate like crate or nekoton_wrapper or utils or nekoton
  /// Value - hierarchy of sub-modules
  final crates = <String, ModuleHierarchy>{};

  for (final entry in nativeSrcDir.listSync(recursive: true)) {
    if (entry.path.endsWith('api.rs') && entry is File) {
      final content = entry.readAsStringSync();

      /// Collect structure of imports
      importsReg.allMatches(content).forEach(
            (importMatch) => parseSingleImport(
              content.substring(importMatch.start, importMatch.end),
              crates,
            ),
          );

      /// Only code that should be saved to result file
      final pureContent = content
          // all imports
          .replaceAll(importsReg, '')
          // all mods
          .replaceAll(RegExp('.*mod.*;'), '')
          // all allows
          .replaceAll(RegExp(r'\#\!\[allow\(.*\)\]'), '')
          .replaceAll('\n\n', '\n');

      final srcPath = RegExp('src.*').firstMatch(entry.path);
      contentBuffer.write(
        '''
///----------------------------
/// CONTENT OF ${entry.path.substring(srcPath!.start, srcPath.end)}
///----------------------------\n
''',
      );
      contentBuffer.write('$pureContent\n');
    }
  }

  mergedFileSink.write('#![allow(unused)]\n');

  /// Write new hierarchy of imports
  final imports = StringBuffer();
  convertCrateToString(crates, imports);
  mergedFileSink.write('$imports\n');

  /// Write all content and imports to result file
  mergedFileSink.write(contentBuffer.toString());
  await mergedFileSink.flush();
  await mergedFileSink.close();

  /// Add created mod to root lib if absent
  final libFile = File('${nativeSrcDir.path}/lib.rs');
  final mods = libFile.readAsStringSync().split('\n').toSet();
  const mergedMod = 'mod $mergedFileName;';
  if (!mods.contains(mergedMod)) {
    mods.add(mergedMod);
    libFile.writeAsStringSync(mods.join('\n'));
  }

  /// Format result file
  await Process.start('rustfmt', [mergedFile.path, '--edition', '2018']);
}

/// Parse single use of rust code into hierarchy.
/// [importFull] contains all lines of one import(even multiline), ex:
/// `pub use crate::nekoton_wrapper::{MnemonicType, dict};
void parseSingleImport(String importFull, Map<String, ModuleHierarchy> crates) {
  final importStr = importFull.replaceAll(RegExp('.*use '), '');
  parseImports(importStr, crates,
      isRoot: true, isRootPublic: importFull.startsWith('pub'));
}

/// Convert resulted [hierarchy] to single string with all nested sub-modules.
void convertCrateToString(
  Map<String, ModuleHierarchy> hierarchy,
  StringBuffer buffer,
) {
  hierarchy.forEach((moduleName, hierarchy) {
    buffer.write(
      '${hierarchy.isRootPublic ? 'pub ' : ''}${hierarchy.isRoot ? 'use ' : ''}$moduleName::{',
    );
    if (hierarchy.directImports.isNotEmpty &&
        hierarchy.directImports.contains('*')) {
      buffer.write('*');
    } else {
      buffer.write('\n');
    }

    if (hierarchy.directImports.isNotEmpty &&
        !hierarchy.directImports.contains('*')) {
      buffer.write('${hierarchy.directImports.join(',')},\n');
    }

    if (hierarchy.subModules.isNotEmpty) {
      convertCrateToString(hierarchy.subModules, buffer);
    }
    buffer.write('}${hierarchy.isRoot ? ';\n' : ',\n'}');
  });
}

/// This method parse hierarchy of [useCrate] and put it in [hierarchy] if absent.
/// [useCrate] starts from name of crate and finishes with '};' or ';', example:
/// crate::nekoton_wrapper::models_api::GeneratedKeyG;
/// or external lib: nekoton::crypto::{MnemonicType, dict};
///
/// [isRoot] means that this is first call of this function for crate hierarchy.
/// [isRootPublic] means that in some file root of [useCrate] was public, so in result hierarchy,
/// whole path will be public.
void parseImports(
  String useCrate,
  Map<String, ModuleHierarchy> hierarchy, {
  bool isRoot = false,
  bool isRootPublic = false,
}) {
  var croppedCrate = useCrate.replaceAll(';', '').trim();
  if (croppedCrate.endsWith(',')) {
    croppedCrate = croppedCrate.substring(0, croppedCrate.length - 1);
  }

  // pure name line nekoton_wrapper or models_api
  final moduleName =
      croppedCrate.substring(0, croppedCrate.indexOf('::')).trim();

  // skip *api files because they will be merged
  if (moduleName.endsWith('api')) return;

  if (!hierarchy.containsKey(moduleName)) {
    hierarchy[moduleName] =
        ModuleHierarchy(moduleName: moduleName, isRoot: isRoot);
  }

  /// Works only for root
  if (isRootPublic) {
    hierarchy[moduleName]!.isRootPublic = true;
  }

  // remove 'crate_name::' part
  croppedCrate = croppedCrate.substring(croppedCrate.indexOf('::') + 2).trim();

  final doubleDotIndex = croppedCrate.indexOf('::');
  final bracketIndex = croppedCrate.indexOf('{');
  if (doubleDotIndex != -1 &&
      (bracketIndex == -1 || doubleDotIndex < bracketIndex)) {
    // more module names here, add in loop sub modules
    parseImports(croppedCrate, hierarchy[moduleName]!.subModules);
  } else if (bracketIndex == 0) {
    // we are inside of block { .. } and we need fill direct imports and sub modules

    // remove brackets { }
    croppedCrate = croppedCrate.substring(1, croppedCrate.length - 1).trim();

    /// Small hack to be sure, that all single imports will be handled normally
    /// because of updated regexp
    if (!croppedCrate.endsWith(',')) {
      croppedCrate = '$croppedCrate,';
    }

    // iterate over sub-blocks and direct imports, group 1 is blocks, group 3 is direct imports
    subCratesParserReg.allMatches(croppedCrate).forEach((match) {
      if (match.group(5) != null) {
        hierarchy[moduleName]!
            .directImports
            .add(match.group(5)!.trim().replaceAll(',', ''));
      } else if (match.group(1) != null) {
        final cratesGroup = match.group(1)!;
        // If there are some glued crates in one line, we should split it
        if (cratesGroup.contains(cratesInSingleLineSpaceReg)) {
          var startOfCrate = 0;

          /// Iterate over all 'crate spaces' and run parser for each of them
          cratesInSingleLineSpaceReg.allMatches(cratesGroup).forEach((crate) {
            final crateStr =
                cratesGroup.substring(startOfCrate, crate.start + 1);
            startOfCrate = crate.start + 2;
            parseImports(crateStr, hierarchy[moduleName]!.subModules);
          });

          /// Parse last crate after all 'crate spaces'
          final crateStr = cratesGroup.substring(startOfCrate);
          parseImports(crateStr, hierarchy[moduleName]!.subModules);
        } else {
          parseImports(cratesGroup, hierarchy[moduleName]!.subModules);
        }
      }
    });
  } else {
    // single direct import
    hierarchy[moduleName]!.directImports.add(croppedCrate);
  }
}

/// Hierarchy of modules in scanning crate
///
/// Example hierarchy:
/// crate::nekoton_wrapper::{SomeImport}
class ModuleHierarchy {
  /// Name of module, same as key of [subModules] of above level.
  ///
  /// It's `crate` or `nekoton_wrapper` from example
  final String moduleName;

  /// Sub modules of this module.
  ///
  /// It's `nekoton_wrapper` from example
  final subModules = <String, ModuleHierarchy>{};

  /// Direct imports of methods, structs, enums from this module.
  ///
  /// It's `SomeImport` from example (but for `nekoton_wrapper` module level).
  final Set<String> directImports = {};

  /// If this module is root.
  /// It is used in converting hierarchy to string to detect when `use` word must be inserted.
  ///
  /// It's true for `crate` from example.
  final bool isRoot;

  /// If root of crate was used as `pub use`
  bool isRootPublic = false;

  ModuleHierarchy({required this.moduleName, required this.isRoot});
}
