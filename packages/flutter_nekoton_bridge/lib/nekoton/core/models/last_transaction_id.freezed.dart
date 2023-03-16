// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'last_transaction_id.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

LastTransactionId _$LastTransactionIdFromJson(Map<String, dynamic> json) {
  return _LastTransactionId.fromJson(json);
}

/// @nodoc
mixin _$LastTransactionId {
  bool get isExact => throw _privateConstructorUsedError;
  String get lt => throw _privateConstructorUsedError;
  @JsonKey(includeIfNull: false)
  String? get hash => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LastTransactionIdCopyWith<LastTransactionId> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LastTransactionIdCopyWith<$Res> {
  factory $LastTransactionIdCopyWith(
          LastTransactionId value, $Res Function(LastTransactionId) then) =
      _$LastTransactionIdCopyWithImpl<$Res>;
  $Res call(
      {bool isExact, String lt, @JsonKey(includeIfNull: false) String? hash});
}

/// @nodoc
class _$LastTransactionIdCopyWithImpl<$Res>
    implements $LastTransactionIdCopyWith<$Res> {
  _$LastTransactionIdCopyWithImpl(this._value, this._then);

  final LastTransactionId _value;
  // ignore: unused_field
  final $Res Function(LastTransactionId) _then;

  @override
  $Res call({
    Object? isExact = freezed,
    Object? lt = freezed,
    Object? hash = freezed,
  }) {
    return _then(_value.copyWith(
      isExact: isExact == freezed
          ? _value.isExact
          : isExact // ignore: cast_nullable_to_non_nullable
              as bool,
      lt: lt == freezed
          ? _value.lt
          : lt // ignore: cast_nullable_to_non_nullable
              as String,
      hash: hash == freezed
          ? _value.hash
          : hash // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_LastTransactionIdCopyWith<$Res>
    implements $LastTransactionIdCopyWith<$Res> {
  factory _$$_LastTransactionIdCopyWith(_$_LastTransactionId value,
          $Res Function(_$_LastTransactionId) then) =
      __$$_LastTransactionIdCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool isExact, String lt, @JsonKey(includeIfNull: false) String? hash});
}

/// @nodoc
class __$$_LastTransactionIdCopyWithImpl<$Res>
    extends _$LastTransactionIdCopyWithImpl<$Res>
    implements _$$_LastTransactionIdCopyWith<$Res> {
  __$$_LastTransactionIdCopyWithImpl(
      _$_LastTransactionId _value, $Res Function(_$_LastTransactionId) _then)
      : super(_value, (v) => _then(v as _$_LastTransactionId));

  @override
  _$_LastTransactionId get _value => super._value as _$_LastTransactionId;

  @override
  $Res call({
    Object? isExact = freezed,
    Object? lt = freezed,
    Object? hash = freezed,
  }) {
    return _then(_$_LastTransactionId(
      isExact: isExact == freezed
          ? _value.isExact
          : isExact // ignore: cast_nullable_to_non_nullable
              as bool,
      lt: lt == freezed
          ? _value.lt
          : lt // ignore: cast_nullable_to_non_nullable
              as String,
      hash: hash == freezed
          ? _value.hash
          : hash // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_LastTransactionId implements _LastTransactionId {
  const _$_LastTransactionId(
      {required this.isExact,
      required this.lt,
      @JsonKey(includeIfNull: false) this.hash});

  factory _$_LastTransactionId.fromJson(Map<String, dynamic> json) =>
      _$$_LastTransactionIdFromJson(json);

  @override
  final bool isExact;
  @override
  final String lt;
  @override
  @JsonKey(includeIfNull: false)
  final String? hash;

  @override
  String toString() {
    return 'LastTransactionId(isExact: $isExact, lt: $lt, hash: $hash)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LastTransactionId &&
            const DeepCollectionEquality().equals(other.isExact, isExact) &&
            const DeepCollectionEquality().equals(other.lt, lt) &&
            const DeepCollectionEquality().equals(other.hash, hash));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(isExact),
      const DeepCollectionEquality().hash(lt),
      const DeepCollectionEquality().hash(hash));

  @JsonKey(ignore: true)
  @override
  _$$_LastTransactionIdCopyWith<_$_LastTransactionId> get copyWith =>
      __$$_LastTransactionIdCopyWithImpl<_$_LastTransactionId>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LastTransactionIdToJson(
      this,
    );
  }
}

abstract class _LastTransactionId implements LastTransactionId {
  const factory _LastTransactionId(
          {required final bool isExact,
          required final String lt,
          @JsonKey(includeIfNull: false) final String? hash}) =
      _$_LastTransactionId;

  factory _LastTransactionId.fromJson(Map<String, dynamic> json) =
      _$_LastTransactionId.fromJson;

  @override
  bool get isExact;
  @override
  String get lt;
  @override
  @JsonKey(includeIfNull: false)
  String? get hash;
  @override
  @JsonKey(ignore: true)
  _$$_LastTransactionIdCopyWith<_$_LastTransactionId> get copyWith =>
      throw _privateConstructorUsedError;
}
