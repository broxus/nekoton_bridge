import 'package:flutter_nekoton_bridge/nekoton/core/models/models_lib.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'symbol.freezed.dart';
part 'symbol.g.dart';

@freezed
class Symbol with _$Symbol {
  const factory Symbol({
    required final String name,
    required final String fullName,
    required final int decimals,
    required final Address rootTokenContract,
  }) = _Symbol;

  factory Symbol.fromJson(Map<String, dynamic> json) => _$SymbolFromJson(json);
}
