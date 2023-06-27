import 'package:freezed_annotation/freezed_annotation.dart';

part 'address.freezed.dart';
part 'address.g.dart';

@freezed
class Address with _$Address {
  const factory Address({
    required String address,
  }) = _FromString;

  factory Address.fromJson(Map<String, dynamic> json) =>
      _$AddressFromJson(json);

  String toEllipseString() => address.length > 6
      ? '${address.substring(0, 6)}...${address.substring(address.length - 4)}'
      : address;
}
