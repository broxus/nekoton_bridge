import 'package:test/test.dart';

import '../bin/merger.dart';

void main() {
  group('Test hierarchy parsing', () {
    test('Test difficult hierarchy with single-line crates parsing', () {
      final crates = <String, ModuleHierarchy>{};
      const crateImport = '''
    crate::nekoton_wrapper::{
      models_api::GeneratedKeyG, crypto::mnemonic::models::KeypairHelper, str_list_to_string_vec,
      str_vec_to_string_vec, HandleError, MatchResult,
    };
    ''';

      parseImports(crateImport, crates);
      final rootCrate = crates['crate']!;
      expect(rootCrate.subModules.length, 1);
      expect(rootCrate.directImports.length, 0);
      expect(rootCrate.moduleName, 'crate');
      final nekotonCrate = rootCrate.subModules['nekoton_wrapper']!;
      expect(nekotonCrate.moduleName, 'nekoton_wrapper');
      expect(nekotonCrate.subModules.keys.toSet(), {'crypto'});
      expect(
        nekotonCrate.directImports,
        {
          'str_list_to_string_vec',
          'str_vec_to_string_vec',
          'HandleError',
          'MatchResult'
        },
      );

      final cryptoModule = nekotonCrate.subModules['crypto']!;
      expect(cryptoModule.directImports.isEmpty, true);
      expect(
        cryptoModule
            .subModules['mnemonic']!.subModules['models']!.directImports,
        {'KeypairHelper'},
      );
    });

    test('Test difficult hierarchy with multi-line crates parsing', () {
      final crates = <String, ModuleHierarchy>{};
      const crateImport = '''
    crate::nekoton_wrapper::{
      models_api::GeneratedKeyG,
      crypto::mnemonic::models::KeypairHelper,
      str_list_to_string_vec, str_vec_to_string_vec, HandleError, MatchResult,
    };
    ''';

      parseImports(crateImport, crates);
      final rootCrate = crates['crate']!;
      expect(rootCrate.subModules.length, 1);
      expect(rootCrate.directImports.length, 0);
      expect(rootCrate.moduleName, 'crate');
      final nekotonCrate = rootCrate.subModules['nekoton_wrapper']!;
      expect(nekotonCrate.moduleName, 'nekoton_wrapper');
      expect(nekotonCrate.subModules.keys.toSet(), {'crypto'});
      expect(
        nekotonCrate.directImports,
        {
          'str_list_to_string_vec',
          'str_vec_to_string_vec',
          'HandleError',
          'MatchResult'
        },
      );

      final cryptoModule = nekotonCrate.subModules['crypto']!;
      expect(cryptoModule.directImports.isEmpty, true);
      expect(
        cryptoModule
            .subModules['mnemonic']!.subModules['models']!.directImports,
        {'KeypairHelper'},
      );
    });

    test('Test simple hierarchy parsing', () {
      final crates = <String, ModuleHierarchy>{};
      const crateImport = '''
    crate::utils::{LogEntry, LogLevel};
    ''';

      parseImports(crateImport, crates);

      final rootCrate = crates['crate']!;
      expect(rootCrate.subModules.length, 1);
      expect(rootCrate.directImports.length, 0);
      expect(rootCrate.moduleName, 'crate');

      final nekotonCrate = rootCrate.subModules['utils']!;
      expect(nekotonCrate.moduleName, 'utils');
      expect(nekotonCrate.subModules.isEmpty, true);
    });

    test('Test deep hierarchy parsing', () {
      final crates = <String, ModuleHierarchy>{};
      const crateImport = '''
    crate::nekoton_wrapper::crypto::mnemonic::models::KeypairHelper;
    ''';

      parseImports(crateImport, crates);

      final rootCrate = crates['crate']!;
      expect(rootCrate.subModules.length, 1);
      expect(rootCrate.directImports.length, 0);
      expect(rootCrate.moduleName, 'crate');

      final nekotonCrate = rootCrate.subModules['nekoton_wrapper']!;
      expect(nekotonCrate.moduleName, 'nekoton_wrapper');
      expect(nekotonCrate.subModules.length, 1);
      expect(nekotonCrate.directImports.length, 0);

      final cryptoCrate = nekotonCrate.subModules['crypto']!;
      expect(cryptoCrate.moduleName, 'crypto');
      expect(cryptoCrate.subModules.length, 1);
      expect(cryptoCrate.directImports.length, 0);

      final mnemonicCrate = cryptoCrate.subModules['mnemonic']!;
      expect(mnemonicCrate.moduleName, 'mnemonic');
      expect(mnemonicCrate.subModules.length, 1);
      expect(mnemonicCrate.directImports.length, 0);

      final modelsCrate = mnemonicCrate.subModules['models']!;
      expect(modelsCrate.moduleName, 'models');
      expect(modelsCrate.subModules.length, 0);
      expect(modelsCrate.directImports, ['KeypairHelper']);
    });

    test('Test external simple hierarchy parsing', () {
      final crates = <String, ModuleHierarchy>{};
      const crateImport = '''
    nekoton::crypto::MnemonicType;
    ''';

      parseImports(crateImport, crates);
      final nekotonCrate = crates['nekoton']!;
      expect(nekotonCrate.moduleName, 'nekoton');
      expect(nekotonCrate.subModules.length, 1);
      expect(nekotonCrate.directImports.length, 0);
      final cryptoCrate = nekotonCrate.subModules['crypto']!;
      expect(cryptoCrate.subModules.length, 0);
      expect(cryptoCrate.directImports, ['MnemonicType']);
      expect(cryptoCrate.moduleName, 'crypto');
    });

    test('Test external difficult hierarchy parsing', () {
      final crates = <String, ModuleHierarchy>{};
      const crateImport = '''
    nekoton::crypto::{derive_from_phrase, dict, generate_key};
    ''';

      parseImports(crateImport, crates);
      final nekotonCrate = crates['nekoton']!;
      expect(nekotonCrate.moduleName, 'nekoton');
      expect(nekotonCrate.subModules.length, 1);
      expect(nekotonCrate.directImports.length, 0);
      final cryptoCrate = nekotonCrate.subModules['crypto']!;
      expect(cryptoCrate.subModules.length, 0);
      expect(cryptoCrate.directImports,
          {'dict', 'derive_from_phrase', 'generate_key'});
      expect(cryptoCrate.moduleName, 'crypto');
    });
  });

  group('Test hierarchy converting to string', () {
    test('Convert plain hierarchy not public', () {
      final nekoton =
          ModuleHierarchy(moduleName: 'nekoton_wrapper', isRoot: false);
      nekoton.directImports.add('SomeModule');
      final crate = ModuleHierarchy(moduleName: 'crate', isRoot: true);
      crate.subModules['nekoton_wrapper'] = nekoton;
      final hierarchy = <String, ModuleHierarchy>{'crate': crate};

      final buffer = StringBuffer();
      convertCrateToString(hierarchy, buffer);
      expect(
        '''
use crate::{
nekoton_wrapper::{
SomeModule,
},
};
''',
        buffer.toString(),
      );
    });

    test('Convert plain hierarchy public', () {
      final nekoton =
          ModuleHierarchy(moduleName: 'nekoton_wrapper', isRoot: false);
      nekoton.directImports.add('SomeModule');
      final crate = ModuleHierarchy(moduleName: 'crate', isRoot: true);
      crate.subModules['nekoton_wrapper'] = nekoton;
      crate.isRootPublic = true;
      final hierarchy = <String, ModuleHierarchy>{'crate': crate};

      final buffer = StringBuffer();
      convertCrateToString(hierarchy, buffer);
      expect(
        '''
pub use crate::{
nekoton_wrapper::{
SomeModule,
},
};
''',
        buffer.toString(),
      );
    });

    test('Convert difficult hierarchy', () {
      final mnemonic = ModuleHierarchy(moduleName: 'mnemonic', isRoot: false);
      mnemonic.directImports.add('*');

      final crypto = ModuleHierarchy(moduleName: 'crypto', isRoot: false);
      crypto.subModules['mnemonic'] = mnemonic;
      crypto.directImports.add('CryptoType');

      final models = ModuleHierarchy(moduleName: 'models', isRoot: false);
      models.directImports.add('ModelType');

      final nekoton =
          ModuleHierarchy(moduleName: 'nekoton_wrapper', isRoot: false);
      nekoton.directImports.add('SomeType');
      nekoton.subModules['crypto'] = crypto;
      nekoton.subModules['models'] = models;

      final crate = ModuleHierarchy(moduleName: 'crate', isRoot: true);
      crate.subModules['nekoton_wrapper'] = nekoton;

      final externalLib = ModuleHierarchy(moduleName: 'utils', isRoot: true);
      externalLib.directImports.add('*');

      final hierarchy = <String, ModuleHierarchy>{
        'crate': crate,
        'utils': externalLib,
      };

      final buffer = StringBuffer();
      convertCrateToString(hierarchy, buffer);
      expect(
        '''
use crate::{
nekoton_wrapper::{
SomeType,
crypto::{
CryptoType,
mnemonic::{*},
},
models::{
ModelType,
},
},
};
use utils::{*};
''',
        buffer.toString(),
      );
    });
  });
}
