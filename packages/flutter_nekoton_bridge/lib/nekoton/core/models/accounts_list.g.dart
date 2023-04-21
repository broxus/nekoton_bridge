// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'accounts_list.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AccountsList _$$_AccountsListFromJson(Map<String, dynamic> json) =>
    _$_AccountsList(
      accounts:
          (json['accounts'] as List<dynamic>).map((e) => e as String).toList(),
      continuation: json['continuation'] as String?,
    );

Map<String, dynamic> _$$_AccountsListToJson(_$_AccountsList instance) {
  final val = <String, dynamic>{
    'accounts': instance.accounts,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('continuation', instance.continuation);
  return val;
}
