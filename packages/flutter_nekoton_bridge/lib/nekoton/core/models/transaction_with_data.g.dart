// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transaction_with_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TransactionWithData<T> _$TransactionWithDataFromJson<T>(
  Map<String, dynamic> json,
  T Function(Object? json) fromJsonT,
) =>
    TransactionWithData<T>(
      transaction:
          Transaction.fromJson(json['transaction'] as Map<String, dynamic>),
      data: _$nullableGenericFromJson(json['data'], fromJsonT),
    );

Map<String, dynamic> _$TransactionWithDataToJson<T>(
  TransactionWithData<T> instance,
  Object? Function(T value) toJsonT,
) =>
    <String, dynamic>{
      'transaction': instance.transaction.toJson(),
      'data': _$nullableGenericToJson(instance.data, toJsonT),
    };

T? _$nullableGenericFromJson<T>(
  Object? input,
  T Function(Object? json) fromJson,
) =>
    input == null ? null : fromJson(input);

Object? _$nullableGenericToJson<T>(
  T? input,
  Object? Function(T value) toJson,
) =>
    input == null ? null : toJson(input);
