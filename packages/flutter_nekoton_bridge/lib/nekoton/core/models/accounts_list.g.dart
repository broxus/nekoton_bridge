// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'accounts_list.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AccountsListImpl _$$AccountsListImplFromJson(Map<String, dynamic> json) =>
    _$AccountsListImpl(
      accounts:
          (json['accounts'] as List<dynamic>).map((e) => e as String).toList(),
      continuation: json['continuation'] as String?,
    );

Map<String, dynamic> _$$AccountsListImplToJson(_$AccountsListImpl instance) =>
    <String, dynamic>{
      'accounts': instance.accounts,
      if (instance.continuation case final value?) 'continuation': value,
    };
