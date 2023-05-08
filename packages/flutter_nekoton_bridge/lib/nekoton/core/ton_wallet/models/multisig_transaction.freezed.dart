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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

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
abstract class _$$_SendCopyWith<$Res> {
  factory _$$_SendCopyWith(_$_Send value, $Res Function(_$_Send) then) =
      __$$_SendCopyWithImpl<$Res>;
  @useResult
  $Res call({MultisigSendTransaction data});

  $MultisigSendTransactionCopyWith<$Res> get data;
}

/// @nodoc
class __$$_SendCopyWithImpl<$Res>
    extends _$MultisigTransactionCopyWithImpl<$Res, _$_Send>
    implements _$$_SendCopyWith<$Res> {
  __$$_SendCopyWithImpl(_$_Send _value, $Res Function(_$_Send) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$_Send(
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
class _$_Send implements _Send {
  const _$_Send(this.data, {final String? $type}) : $type = $type ?? 'send';

  factory _$_Send.fromJson(Map<String, dynamic> json) => _$$_SendFromJson(json);

  @override
  final MultisigSendTransaction data;

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'MultisigTransaction.send(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Send &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SendCopyWith<_$_Send> get copyWith =>
      __$$_SendCopyWithImpl<_$_Send>(this, _$identity);

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
    return _$$_SendToJson(
      this,
    );
  }
}

abstract class _Send implements MultisigTransaction {
  const factory _Send(final MultisigSendTransaction data) = _$_Send;

  factory _Send.fromJson(Map<String, dynamic> json) = _$_Send.fromJson;

  @override
  MultisigSendTransaction get data;
  @JsonKey(ignore: true)
  _$$_SendCopyWith<_$_Send> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SubmitCopyWith<$Res> {
  factory _$$_SubmitCopyWith(_$_Submit value, $Res Function(_$_Submit) then) =
      __$$_SubmitCopyWithImpl<$Res>;
  @useResult
  $Res call({MultisigSubmitTransaction data});

  $MultisigSubmitTransactionCopyWith<$Res> get data;
}

/// @nodoc
class __$$_SubmitCopyWithImpl<$Res>
    extends _$MultisigTransactionCopyWithImpl<$Res, _$_Submit>
    implements _$$_SubmitCopyWith<$Res> {
  __$$_SubmitCopyWithImpl(_$_Submit _value, $Res Function(_$_Submit) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$_Submit(
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
class _$_Submit implements _Submit {
  const _$_Submit(this.data, {final String? $type}) : $type = $type ?? 'submit';

  factory _$_Submit.fromJson(Map<String, dynamic> json) =>
      _$$_SubmitFromJson(json);

  @override
  final MultisigSubmitTransaction data;

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'MultisigTransaction.submit(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Submit &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SubmitCopyWith<_$_Submit> get copyWith =>
      __$$_SubmitCopyWithImpl<_$_Submit>(this, _$identity);

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
    return _$$_SubmitToJson(
      this,
    );
  }
}

abstract class _Submit implements MultisigTransaction {
  const factory _Submit(final MultisigSubmitTransaction data) = _$_Submit;

  factory _Submit.fromJson(Map<String, dynamic> json) = _$_Submit.fromJson;

  @override
  MultisigSubmitTransaction get data;
  @JsonKey(ignore: true)
  _$$_SubmitCopyWith<_$_Submit> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ConfirmCopyWith<$Res> {
  factory _$$_ConfirmCopyWith(
          _$_Confirm value, $Res Function(_$_Confirm) then) =
      __$$_ConfirmCopyWithImpl<$Res>;
  @useResult
  $Res call({MultisigConfirmTransaction data});

  $MultisigConfirmTransactionCopyWith<$Res> get data;
}

/// @nodoc
class __$$_ConfirmCopyWithImpl<$Res>
    extends _$MultisigTransactionCopyWithImpl<$Res, _$_Confirm>
    implements _$$_ConfirmCopyWith<$Res> {
  __$$_ConfirmCopyWithImpl(_$_Confirm _value, $Res Function(_$_Confirm) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$_Confirm(
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
class _$_Confirm implements _Confirm {
  const _$_Confirm(this.data, {final String? $type})
      : $type = $type ?? 'confirm';

  factory _$_Confirm.fromJson(Map<String, dynamic> json) =>
      _$$_ConfirmFromJson(json);

  @override
  final MultisigConfirmTransaction data;

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'MultisigTransaction.confirm(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Confirm &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ConfirmCopyWith<_$_Confirm> get copyWith =>
      __$$_ConfirmCopyWithImpl<_$_Confirm>(this, _$identity);

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
    return _$$_ConfirmToJson(
      this,
    );
  }
}

abstract class _Confirm implements MultisigTransaction {
  const factory _Confirm(final MultisigConfirmTransaction data) = _$_Confirm;

  factory _Confirm.fromJson(Map<String, dynamic> json) = _$_Confirm.fromJson;

  @override
  MultisigConfirmTransaction get data;
  @JsonKey(ignore: true)
  _$$_ConfirmCopyWith<_$_Confirm> get copyWith =>
      throw _privateConstructorUsedError;
}
