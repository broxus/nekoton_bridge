// This file has been generated by the reflectable package.
// https://github.com/dart-lang/reflectable.

import 'dart:core';
import 'package:flutter_nekoton_bridge/example_related/caller_test_class_wrapper.dart'
    as prefix2;
import 'package:flutter_nekoton_bridge/example_related/caller_wrapper.dart'
    as prefix3;
import 'package:flutter_nekoton_bridge/nekoton/external/gql_connection.dart'
    as prefix4;
import 'package:flutter_nekoton_bridge/nekoton/external/jrpc_connection.dart'
    as prefix5;
import 'package:flutter_nekoton_bridge/nekoton/external/ledger_connection.dart'
    as prefix6;
import 'package:flutter_nekoton_bridge/rust_to_dart/reflector.dart' as prefix0;
import 'storage.dart' as prefix1;

// ignore_for_file: camel_case_types
// ignore_for_file: implementation_imports
// ignore_for_file: prefer_adjacent_string_concatenation
// ignore_for_file: prefer_collection_literals
// ignore_for_file: unnecessary_const

// ignore:unused_import
import 'package:reflectable/mirrors.dart' as m;
// ignore:unused_import
import 'package:reflectable/src/reflectable_builder_based.dart' as r;
// ignore:unused_import
import 'package:reflectable/reflectable.dart' as r show Reflectable;

final _data = <r.Reflectable, r.ReflectorData>{
  const prefix0.Reflector(): r.ReflectorData(
      <m.TypeMirror>[
        r.NonGenericClassMirrorImpl(
            r'Storage',
            r'.Storage',
            134217735,
            0,
            const prefix0.Reflector(),
            const <int>[-1],
            null,
            null,
            -1,
            {r'create': () => prefix1.Storage.create},
            {},
            {},
            -1,
            -1,
            const <int>[-1],
            null,
            {
              r'==': 1,
              r'toString': 0,
              r'noSuchMethod': 1,
              r'hashCode': 0,
              r'runtimeType': 0,
              r'init': 0,
              r'dispose': 0,
              r'instanceHash': 0,
              r'get': 1,
              r'set': 2,
              r'setUnchecked': 2,
              r'remove': 2,
              r'removeUnchecked': 2,
              r'initializeMirror': 0,
              r'storage': 0,
              r'storage=': 1,
              r'create': 0
            }),
        r.NonGenericClassMirrorImpl(
            r'CallerTestClassWrapper',
            r'.CallerTestClassWrapper',
            134217735,
            1,
            const prefix0.Reflector(),
            const <int>[-1],
            null,
            null,
            -1,
            {r'create': () => prefix2.CallerTestClassWrapper.create},
            {},
            {},
            -1,
            -1,
            const <int>[-1],
            null,
            {
              r'==': 1,
              r'toString': 0,
              r'noSuchMethod': 1,
              r'hashCode': 0,
              r'runtimeType': 0,
              r'init': 0,
              r'dispose': 0,
              r'instanceHash': 0,
              r'request': 1,
              r'initializeMirror': 0,
              r'caller': 0,
              r'caller=': 1,
              r'create': 1
            }),
        r.NonGenericClassMirrorImpl(
            r'CallerWrapper',
            r'.CallerWrapper',
            134217735,
            2,
            const prefix0.Reflector(),
            const <int>[-1],
            null,
            null,
            -1,
            {},
            {},
            {
              r'': (bool b) =>
                  (caller) => b ? prefix3.CallerWrapper(caller) : null
            },
            -1,
            -1,
            const <int>[-1],
            null,
            {
              r'==': 1,
              r'toString': 0,
              r'noSuchMethod': 1,
              r'hashCode': 0,
              r'runtimeType': 0,
              r'init': 0,
              r'dispose': 0,
              r'instanceHash': 0,
              r'func0': 3,
              r'func1': 3,
              r'func2': 1,
              r'test0': 1,
              r'initializeMirror': 0,
              r'caller': 0
            }),
        r.NonGenericClassMirrorImpl(
            r'GqlConnection',
            r'.GqlConnection',
            134217735,
            3,
            const prefix0.Reflector(),
            const <int>[-1],
            null,
            null,
            -1,
            {r'create': () => prefix4.GqlConnection.create},
            {},
            {},
            -1,
            -1,
            const <int>[-1],
            null,
            {
              r'==': 1,
              r'toString': 0,
              r'noSuchMethod': 1,
              r'hashCode': 0,
              r'runtimeType': 0,
              r'init': 0,
              r'dispose': 0,
              r'instanceHash': 0,
              r'post': 1,
              r'initializeMirror': 0,
              r'connection': 0,
              r'connection=': 1,
              r'name': 0,
              r'networkId': 0,
              r'group': 0,
              r'type': 0,
              r'create': 4
            }),
        r.NonGenericClassMirrorImpl(
            r'JrpcConnection',
            r'.JrpcConnection',
            134217735,
            4,
            const prefix0.Reflector(),
            const <int>[-1],
            null,
            null,
            -1,
            {r'create': () => prefix5.JrpcConnection.create},
            {},
            {},
            -1,
            -1,
            const <int>[-1],
            null,
            {
              r'==': 1,
              r'toString': 0,
              r'noSuchMethod': 1,
              r'hashCode': 0,
              r'runtimeType': 0,
              r'init': 0,
              r'dispose': 0,
              r'instanceHash': 0,
              r'post': 1,
              r'initializeMirror': 0,
              r'connection': 0,
              r'connection=': 1,
              r'name': 0,
              r'networkId': 0,
              r'group': 0,
              r'type': 0,
              r'create': 4
            }),
        r.NonGenericClassMirrorImpl(
            r'LedgerConnection',
            r'.LedgerConnection',
            134217735,
            5,
            const prefix0.Reflector(),
            const <int>[-1],
            null,
            null,
            -1,
            {r'create': () => prefix6.LedgerConnection.create},
            {},
            {},
            -1,
            -1,
            const <int>[-1],
            null,
            {
              r'==': 1,
              r'toString': 0,
              r'noSuchMethod': 1,
              r'hashCode': 0,
              r'runtimeType': 0,
              r'init': 0,
              r'dispose': 0,
              r'instanceHash': 0,
              r'getPublicKey': 1,
              r'initializeMirror': 0,
              r'connection': 0,
              r'connection=': 1,
              r'create': 5
            })
      ],
      null,
      null,
      <Type>[
        prefix1.Storage,
        prefix2.CallerTestClassWrapper,
        prefix3.CallerWrapper,
        prefix4.GqlConnection,
        prefix5.JrpcConnection,
        prefix6.LedgerConnection
      ],
      6,
      {
        r'==': (dynamic instance) => (x) => instance == x,
        r'toString': (dynamic instance) => instance.toString,
        r'noSuchMethod': (dynamic instance) => instance.noSuchMethod,
        r'hashCode': (dynamic instance) => instance.hashCode,
        r'runtimeType': (dynamic instance) => instance.runtimeType,
        r'init': (dynamic instance) => instance.init,
        r'dispose': (dynamic instance) => instance.dispose,
        r'instanceHash': (dynamic instance) => instance.instanceHash,
        r'get': (dynamic instance) => instance.get,
        r'set': (dynamic instance) => instance.set,
        r'setUnchecked': (dynamic instance) => instance.setUnchecked,
        r'remove': (dynamic instance) => instance.remove,
        r'removeUnchecked': (dynamic instance) => instance.removeUnchecked,
        r'initializeMirror': (dynamic instance) => instance.initializeMirror,
        r'storage': (dynamic instance) => instance.storage,
        r'request': (dynamic instance) => instance.request,
        r'caller': (dynamic instance) => instance.caller,
        r'func0': (dynamic instance) => instance.func0,
        r'func1': (dynamic instance) => instance.func1,
        r'func2': (dynamic instance) => instance.func2,
        r'test0': (dynamic instance) => instance.test0,
        r'post': (dynamic instance) => instance.post,
        r'connection': (dynamic instance) => instance.connection,
        r'name': (dynamic instance) => instance.name,
        r'networkId': (dynamic instance) => instance.networkId,
        r'group': (dynamic instance) => instance.group,
        r'type': (dynamic instance) => instance.type,
        r'getPublicKey': (dynamic instance) => instance.getPublicKey
      },
      {
        r'storage=': (dynamic instance, value) => instance.storage = value,
        r'caller=': (dynamic instance, value) => instance.caller = value,
        r'connection=': (dynamic instance, value) => instance.connection = value
      },
      null,
      [
        const [
          0,
          0,
          const [#get, #set, #setUnchecked, #remove, #removeUnchecked]
        ],
        const [1, 0, null],
        const [
          0,
          0,
          const [#key, #value]
        ],
        const [
          3,
          0,
          const [#arg0, #arg1]
        ],
        const [
          0,
          0,
          const [#post, #get, #settings, #name, #group, #networkId]
        ],
        const [
          0,
          0,
          const [#getPublicKey, #connectionSign]
        ]
      ])
};

final _memberSymbolMap = null;

void initializeReflectable() {
  r.data = _data;
  r.memberSymbolMap = _memberSymbolMap;
}
