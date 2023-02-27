import 'dart:io';

import 'package:basic_utils/basic_utils.dart';

/// Custom generation of single-lib wrapper.
/// This solution is used with frb that generates multi-file library.
/// This runs automatically in the end of build.rs script
void main() {
  final bridgeDir = Directory.current.parent;
  final dartSrcDir = Directory('${bridgeDir.path}/lib/src');

  final classNames = <String>[];
  final pathsInSrc = <String>[];

  for (final entry in dartSrcDir.listSync(recursive: true)) {
    if (entry.path.endsWith('logger.dart')) {
      final name = entry.uri.pathSegments.last;
      final fileName = name.replaceAll('.dart', '');
      classNames.add(StringUtils.toPascalCase(fileName));
      final srcPath = RegExp('src.*').firstMatch(entry.path);
      pathsInSrc.add(entry.path.substring(srcPath!.start, srcPath.end));
    }
  }

  final output = File('${dartSrcDir.path}/file_wrapper_gen.dart');
  if (output.existsSync()) output.deleteSync();

  output.writeAsStringSync('''
  import 'package:nekoton_bridge/src/ffi.dart';
  ${pathsInSrc.map((e) => "import 'package:nekoton_bridge/$e';").join('\n')}
  
  class LibWrapper {
  static LibWrapper? _wrapper;

  static LibWrapper getLib() {
    _wrapper ??= createLib();
    return _wrapper!;
  }

  static LibWrapper createLib() {
    final lib = createLibraryImpl();
    
    return LibWrapper(
      ${classNames.map((e) => "${e.uncapitalize}: ${e}Impl(lib),").join('\n')}
    );
  }

  LibWrapper({
    ${classNames.map((e) => 'required this.${e.uncapitalize},').join('\n')}
  });
  
  ${classNames.map((e) => 'final $e ${e.uncapitalize};').join('\n')}
}
  ''');
}

extension on String {
  String get uncapitalize {
    return '${this[0].toLowerCase()}${substring(1)}';
  }
}
