import 'package:flutter_nekoton_bridge/nekoton/core/models/models_lib.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'keypair.freezed.dart';
part 'keypair.g.dart';

@freezed
sealed class Keypair with _$Keypair {
  const factory Keypair({
    required final PublicKey public,
    required final PublicKey secret,
  }) = _Keypair;

  factory Keypair.fromJson(Map<String, dynamic> json) =>
      _$KeypairFromJson(json);
}
