// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'accounts_list.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AccountsList _$AccountsListFromJson(Map<String, dynamic> json) =>
    _AccountsList(
      accounts:
          (json['accounts'] as List<dynamic>).map((e) => e as String).toList(),
      continuation: json['continuation'] as String?,
    );

Map<String, dynamic> _$AccountsListToJson(_AccountsList instance) =>
    <String, dynamic>{
      'accounts': instance.accounts,
      if (instance.continuation case final value?) 'continuation': value,
    };
