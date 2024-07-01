// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'multisig_transaction.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MultisigTransaction _$MultisigTransactionFromJson(Map<String, dynamic> json) {
  switch (json['type']) {
    case 'send':
      return _Send.fromJson(json);
    case 'submit':
      return _Submit.fromJson(json);
    case 'confirm':
      return _Confirm.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'type', 'MultisigTransaction',
          'Invalid union type "${json['type']}"!');
  }
}

/// @nodoc
mixin _$MultisigTransaction {
  Object get data => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(MultisigSendTransaction data) send,
    required TResult Function(MultisigSubmitTransaction data) submit,
    required TResult Function(MultisigConfirmTransaction data) confirm,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(MultisigSendTransaction data)? send,
    TResult? Function(MultisigSubmitTransaction data)? submit,
    TResult? Function(MultisigConfirmTransaction data)? confirm,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(MultisigSendTransaction data)? send,
    TResult Function(MultisigSubmitTransaction data)? submit,
    TResult Function(MultisigConfirmTransaction data)? confirm,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Send value) send,
    required TResult Function(_Submit value) submit,
    required TResult Function(_Confirm value) confirm,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Send value)? send,
    TResult? Function(_Submit value)? submit,
    TResult? Function(_Confirm value)? confirm,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Send value)? send,
    TResult Function(_Submit value)? submit,
    TResult Function(_Confirm value)? confirm,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MultisigTransactionCopyWith<$Res> {
  factory $MultisigTransactionCopyWith(
          MultisigTransaction value, $Res Function(MultisigTransaction) then) =
      _$MultisigTransactionCopyWithImpl<$Res, MultisigTransaction>;
}

/// @nodoc
class _$MultisigTransactionCopyWithImpl<$Res, $Val extends MultisigTransaction>
    implements $MultisigTransactionCopyWith<$Res> {
  _$MultisigTransactionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$SendImplCopyWith<$Res> {
  factory _$$SendImplCopyWith(
          _$SendImpl value, $Res Function(_$SendImpl) then) =
      __$$SendImplCopyWithImpl<$Res>;
  @useResult
  $Res call({MultisigSendTransaction data});

  $MultisigSendTransactionCopyWith<$Res> get data;
}

/// @nodoc
class __$$SendImplCopyWithImpl<$Res>
    extends _$MultisigTransactionCopyWithImpl<$Res, _$SendImpl>
    implements _$$SendImplCopyWith<$Res> {
  __$$SendImplCopyWithImpl(_$SendImpl _value, $Res Function(_$SendImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$SendImpl(
      null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as MultisigSendTransaction,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $MultisigSendTransactionCopyWith<$Res> get data {
    return $MultisigSendTransactionCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _$SendImpl implements _Send {
  const _$SendImpl(this.data, {final String? $type}) : $type = $type ?? 'send';

  factory _$SendImpl.fromJson(Map<String, dynamic> json) =>
      _$$SendImplFromJson(json);

  @override
  final MultisigSendTransaction data;

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'MultisigTransaction.send(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SendImpl &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SendImplCopyWith<_$SendImpl> get copyWith =>
      __$$SendImplCopyWithImpl<_$SendImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(MultisigSendTransaction data) send,
    required TResult Function(MultisigSubmitTransaction data) submit,
    required TResult Function(MultisigConfirmTransaction data) confirm,
  }) {
    return send(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(MultisigSendTransaction data)? send,
    TResult? Function(MultisigSubmitTransaction data)? submit,
    TResult? Function(MultisigConfirmTransaction data)? confirm,
  }) {
    return send?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(MultisigSendTransaction data)? send,
    TResult Function(MultisigSubmitTransaction data)? submit,
    TResult Function(MultisigConfirmTransaction data)? confirm,
    required TResult orElse(),
  }) {
    if (send != null) {
      return send(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Send value) send,
    required TResult Function(_Submit value) submit,
    required TResult Function(_Confirm value) confirm,
  }) {
    return send(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Send value)? send,
    TResult? Function(_Submit value)? submit,
    TResult? Function(_Confirm value)? confirm,
  }) {
    return send?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Send value)? send,
    TResult Function(_Submit value)? submit,
    TResult Function(_Confirm value)? confirm,
    required TResult orElse(),
  }) {
    if (send != null) {
      return send(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$SendImplToJson(
      this,
    );
  }
}

abstract class _Send implements MultisigTransaction {
  const factory _Send(final MultisigSendTransaction data) = _$SendImpl;

  factory _Send.fromJson(Map<String, dynamic> json) = _$SendImpl.fromJson;

  @override
  MultisigSendTransaction get data;
  @JsonKey(ignore: true)
  _$$SendImplCopyWith<_$SendImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SubmitImplCopyWith<$Res> {
  factory _$$SubmitImplCopyWith(
          _$SubmitImpl value, $Res Function(_$SubmitImpl) then) =
      __$$SubmitImplCopyWithImpl<$Res>;
  @useResult
  $Res call({MultisigSubmitTransaction data});

  $MultisigSubmitTransactionCopyWith<$Res> get data;
}

/// @nodoc
class __$$SubmitImplCopyWithImpl<$Res>
    extends _$MultisigTransactionCopyWithImpl<$Res, _$SubmitImpl>
    implements _$$SubmitImplCopyWith<$Res> {
  __$$SubmitImplCopyWithImpl(
      _$SubmitImpl _value, $Res Function(_$SubmitImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$SubmitImpl(
      null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as MultisigSubmitTransaction,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $MultisigSubmitTransactionCopyWith<$Res> get data {
    return $MultisigSubmitTransactionCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _$SubmitImpl implements _Submit {
  const _$SubmitImpl(this.data, {final String? $type})
      : $type = $type ?? 'submit';

  factory _$SubmitImpl.fromJson(Map<String, dynamic> json) =>
      _$$SubmitImplFromJson(json);

  @override
  final MultisigSubmitTransaction data;

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'MultisigTransaction.submit(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SubmitImpl &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SubmitImplCopyWith<_$SubmitImpl> get copyWith =>
      __$$SubmitImplCopyWithImpl<_$SubmitImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(MultisigSendTransaction data) send,
    required TResult Function(MultisigSubmitTransaction data) submit,
    required TResult Function(MultisigConfirmTransaction data) confirm,
  }) {
    return submit(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(MultisigSendTransaction data)? send,
    TResult? Function(MultisigSubmitTransaction data)? submit,
    TResult? Function(MultisigConfirmTransaction data)? confirm,
  }) {
    return submit?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(MultisigSendTransaction data)? send,
    TResult Function(MultisigSubmitTransaction data)? submit,
    TResult Function(MultisigConfirmTransaction data)? confirm,
    required TResult orElse(),
  }) {
    if (submit != null) {
      return submit(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Send value) send,
    required TResult Function(_Submit value) submit,
    required TResult Function(_Confirm value) confirm,
  }) {
    return submit(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Send value)? send,
    TResult? Function(_Submit value)? submit,
    TResult? Function(_Confirm value)? confirm,
  }) {
    return submit?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Send value)? send,
    TResult Function(_Submit value)? submit,
    TResult Function(_Confirm value)? confirm,
    required TResult orElse(),
  }) {
    if (submit != null) {
      return submit(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$SubmitImplToJson(
      this,
    );
  }
}

abstract class _Submit implements MultisigTransaction {
  const factory _Submit(final MultisigSubmitTransaction data) = _$SubmitImpl;

  factory _Submit.fromJson(Map<String, dynamic> json) = _$SubmitImpl.fromJson;

  @override
  MultisigSubmitTransaction get data;
  @JsonKey(ignore: true)
  _$$SubmitImplCopyWith<_$SubmitImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ConfirmImplCopyWith<$Res> {
  factory _$$ConfirmImplCopyWith(
          _$ConfirmImpl value, $Res Function(_$ConfirmImpl) then) =
      __$$ConfirmImplCopyWithImpl<$Res>;
  @useResult
  $Res call({MultisigConfirmTransaction data});

  $MultisigConfirmTransactionCopyWith<$Res> get data;
}

/// @nodoc
class __$$ConfirmImplCopyWithImpl<$Res>
    extends _$MultisigTransactionCopyWithImpl<$Res, _$ConfirmImpl>
    implements _$$ConfirmImplCopyWith<$Res> {
  __$$ConfirmImplCopyWithImpl(
      _$ConfirmImpl _value, $Res Function(_$ConfirmImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$ConfirmImpl(
      null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as MultisigConfirmTransaction,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $MultisigConfirmTransactionCopyWith<$Res> get data {
    return $MultisigConfirmTransactionCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _$ConfirmImpl implements _Confirm {
  const _$ConfirmImpl(this.data, {final String? $type})
      : $type = $type ?? 'confirm';

  factory _$ConfirmImpl.fromJson(Map<String, dynamic> json) =>
      _$$ConfirmImplFromJson(json);

  @override
  final MultisigConfirmTransaction data;

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'MultisigTransaction.confirm(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConfirmImpl &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ConfirmImplCopyWith<_$ConfirmImpl> get copyWith =>
      __$$ConfirmImplCopyWithImpl<_$ConfirmImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(MultisigSendTransaction data) send,
    required TResult Function(MultisigSubmitTransaction data) submit,
    required TResult Function(MultisigConfirmTransaction data) confirm,
  }) {
    return confirm(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(MultisigSendTransaction data)? send,
    TResult? Function(MultisigSubmitTransaction data)? submit,
    TResult? Function(MultisigConfirmTransaction data)? confirm,
  }) {
    return confirm?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(MultisigSendTransaction data)? send,
    TResult Function(MultisigSubmitTransaction data)? submit,
    TResult Function(MultisigConfirmTransaction data)? confirm,
    required TResult orElse(),
  }) {
    if (confirm != null) {
      return confirm(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Send value) send,
    required TResult Function(_Submit value) submit,
    required TResult Function(_Confirm value) confirm,
  }) {
    return confirm(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Send value)? send,
    TResult? Function(_Submit value)? submit,
    TResult? Function(_Confirm value)? confirm,
  }) {
    return confirm?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Send value)? send,
    TResult Function(_Submit value)? submit,
    TResult Function(_Confirm value)? confirm,
    required TResult orElse(),
  }) {
    if (confirm != null) {
      return confirm(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$ConfirmImplToJson(
      this,
    );
  }
}

abstract class _Confirm implements MultisigTransaction {
  const factory _Confirm(final MultisigConfirmTransaction data) = _$ConfirmImpl;

  factory _Confirm.fromJson(Map<String, dynamic> json) = _$ConfirmImpl.fromJson;

  @override
  MultisigConfirmTransaction get data;
  @JsonKey(ignore: true)
  _$$ConfirmImplCopyWith<_$ConfirmImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
