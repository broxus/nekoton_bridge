import 'package:flutter_nekoton_bridge/nekoton/core/models/models_lib.dart';
import 'package:flutter_nekoton_bridge/nekoton/utils.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'keypair.freezed.dart';
part 'keypair.g.dart';

@freezed
class Keypair with _$Keypair {
  const factory Keypair({
    @publicKeyJsonConverter required PublicKey public,
    @publicKeyJsonConverter required PublicKey secret,
  }) = _Keypair;

  factory Keypair.fromJson(Map<String, dynamic> json) =>
      _$KeypairFromJson(json);
}
