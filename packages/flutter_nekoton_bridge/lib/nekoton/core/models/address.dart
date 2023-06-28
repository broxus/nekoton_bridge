import 'package:freezed_annotation/freezed_annotation.dart';

part 'address.freezed.dart';
part 'address.g.dart';

@freezed

/// Blockchain address
class Address with _$Address {
  const Address._();

  const factory Address({
    required final String address,
  }) = _FromString;

  factory Address.fromJson(Map<String, dynamic> json) =>
      _$AddressFromJson(json);

  /// Returns address in ellipse form
  String toEllipseString() => address.length > 6
      ? '${address.substring(0, 6)}...${address.substring(address.length - 4)}'
      : address;

  @override
  String toString() => address;

  /// Compares addresses address
  int compareTo(Address other) => address.compareTo(other.address);

  /// Returns workchain id
  int get workchain => int.parse(address.split(':').first);
}
