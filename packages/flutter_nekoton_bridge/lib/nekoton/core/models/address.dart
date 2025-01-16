import 'package:flutter_nekoton_bridge/flutter_nekoton_bridge.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'address.freezed.dart';

@Freezed(fromJson: false, toJson: false)
sealed class Address with _$Address {
  const Address._();

  const factory Address({
    required final String address,
  }) = _FromString;

  factory Address.fromJson(String json) => Address(address: json);

  bool get isRaw => address.startsWith(_regex);

  bool get isZeroState => _zerostate.contains(toRaw());

  String toJson() => toRaw();

  String toRaw() => isRaw ? address : ntRepackAddress(address: address);

  String toBounceable() => !isRaw
      ? address
      : ntPackAddress(
          address: address,
          bounceable: true,
          isUrlSafe: true,
        );

  /// Returns address in ellipse form
  String toEllipseString() => address.length > 6
      ? '${address.substring(0, 6)}...${address.substring(address.length - 4)}'
      : address;

  @override
  String toString() => address;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Address &&
            (identical(other.address, address) || other.toRaw() == toRaw()));
  }

  @override
  int get hashCode => Object.hash(runtimeType, toRaw());

  /// Compares addresses address
  int compareTo(Address other) => toRaw().compareTo(other.toRaw());

  /// Returns workchain id
  int get workchain => int.parse(toRaw().split(':').first);
}

final _regex = RegExp(r'^-?\d{1,3}:');
const _zerostate = {
  '-1:0000000000000000000000000000000000000000000000000000000000000000',
  '-1:1111111111111111111111111111111111111111111111111111111111111111',
  '-1:2222222222222222222222222222222222222222222222222222222222222222',
  '-1:3333333333333333333333333333333333333333333333333333333333333333',
  '-1:4444444444444444444444444444444444444444444444444444444444444444',
  '-1:5555555555555555555555555555555555555555555555555555555555555555',
  '-1:6666666666666666666666666666666666666666666666666666666666666666',
  '-1:7777777777777777777777777777777777777777777777777777777777777777',
  '-1:8888888888888888888888888888888888888888888888888888888888888888',
  '-1:9999999999999999999999999999999999999999999999999999999999999999',
  '-1:aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa',
  '-1:bbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbb',
  '-1:cccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccc',
  '-1:dddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddd',
  '-1:eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee',
  '-1:ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff',
};
