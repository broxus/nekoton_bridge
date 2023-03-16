// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'accounts_list.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AccountsList _$AccountsListFromJson(Map<String, dynamic> json) {
  return _AccountsList.fromJson(json);
}

/// @nodoc
mixin _$AccountsList {
  List<String> get accounts => throw _privateConstructorUsedError;
  @JsonKey(includeIfNull: false)
  String? get continuation => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AccountsListCopyWith<AccountsList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AccountsListCopyWith<$Res> {
  factory $AccountsListCopyWith(
          AccountsList value, $Res Function(AccountsList) then) =
      _$AccountsListCopyWithImpl<$Res, AccountsList>;
  @useResult
  $Res call(
      {List<String> accounts,
      @JsonKey(includeIfNull: false) String? continuation});
}

/// @nodoc
class _$AccountsListCopyWithImpl<$Res, $Val extends AccountsList>
    implements $AccountsListCopyWith<$Res> {
  _$AccountsListCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accounts = null,
    Object? continuation = freezed,
  }) {
    return _then(_value.copyWith(
      accounts: null == accounts
          ? _value.accounts
          : accounts // ignore: cast_nullable_to_non_nullable
              as List<String>,
      continuation: freezed == continuation
          ? _value.continuation
          : continuation // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AccountsListCopyWith<$Res>
    implements $AccountsListCopyWith<$Res> {
  factory _$$_AccountsListCopyWith(
          _$_AccountsList value, $Res Function(_$_AccountsList) then) =
      __$$_AccountsListCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<String> accounts,
      @JsonKey(includeIfNull: false) String? continuation});
}

/// @nodoc
class __$$_AccountsListCopyWithImpl<$Res>
    extends _$AccountsListCopyWithImpl<$Res, _$_AccountsList>
    implements _$$_AccountsListCopyWith<$Res> {
  __$$_AccountsListCopyWithImpl(
      _$_AccountsList _value, $Res Function(_$_AccountsList) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accounts = null,
    Object? continuation = freezed,
  }) {
    return _then(_$_AccountsList(
      accounts: null == accounts
          ? _value._accounts
          : accounts // ignore: cast_nullable_to_non_nullable
              as List<String>,
      continuation: freezed == continuation
          ? _value.continuation
          : continuation // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AccountsList implements _AccountsList {
  const _$_AccountsList(
      {required final List<String> accounts,
      @JsonKey(includeIfNull: false) this.continuation})
      : _accounts = accounts;

  factory _$_AccountsList.fromJson(Map<String, dynamic> json) =>
      _$$_AccountsListFromJson(json);

  final List<String> _accounts;
  @override
  List<String> get accounts {
    if (_accounts is EqualUnmodifiableListView) return _accounts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_accounts);
  }

  @override
  @JsonKey(includeIfNull: false)
  final String? continuation;

  @override
  String toString() {
    return 'AccountsList(accounts: $accounts, continuation: $continuation)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AccountsList &&
            const DeepCollectionEquality().equals(other._accounts, _accounts) &&
            (identical(other.continuation, continuation) ||
                other.continuation == continuation));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_accounts), continuation);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AccountsListCopyWith<_$_AccountsList> get copyWith =>
      __$$_AccountsListCopyWithImpl<_$_AccountsList>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AccountsListToJson(
      this,
    );
  }
}

abstract class _AccountsList implements AccountsList {
  const factory _AccountsList(
          {required final List<String> accounts,
          @JsonKey(includeIfNull: false) final String? continuation}) =
      _$_AccountsList;

  factory _AccountsList.fromJson(Map<String, dynamic> json) =
      _$_AccountsList.fromJson;

  @override
  List<String> get accounts;
  @override
  @JsonKey(includeIfNull: false)
  String? get continuation;
  @override
  @JsonKey(ignore: true)
  _$$_AccountsListCopyWith<_$_AccountsList> get copyWith =>
      throw _privateConstructorUsedError;
}
