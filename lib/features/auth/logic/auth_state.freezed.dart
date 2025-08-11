// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AuthState<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loginLoading,
    required TResult Function(T data) loginSuccess,
    required TResult Function(String message) loginError,
    required TResult Function() registerLoading,
    required TResult Function(T data) registerSuccess,
    required TResult Function(String message) registerError,
    required TResult Function() forgetPasswordLoading,
    required TResult Function(T data) forgetPasswordSuccess,
    required TResult Function(String message) forgetPasswordError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loginLoading,
    TResult? Function(T data)? loginSuccess,
    TResult? Function(String message)? loginError,
    TResult? Function()? registerLoading,
    TResult? Function(T data)? registerSuccess,
    TResult? Function(String message)? registerError,
    TResult? Function()? forgetPasswordLoading,
    TResult? Function(T data)? forgetPasswordSuccess,
    TResult? Function(String message)? forgetPasswordError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loginLoading,
    TResult Function(T data)? loginSuccess,
    TResult Function(String message)? loginError,
    TResult Function()? registerLoading,
    TResult Function(T data)? registerSuccess,
    TResult Function(String message)? registerError,
    TResult Function()? forgetPasswordLoading,
    TResult Function(T data)? forgetPasswordSuccess,
    TResult Function(String message)? forgetPasswordError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthInitial<T> value) initial,
    required TResult Function(LoginLoading<T> value) loginLoading,
    required TResult Function(LoginSuccess<T> value) loginSuccess,
    required TResult Function(LoginError<T> value) loginError,
    required TResult Function(RegisterLoading<T> value) registerLoading,
    required TResult Function(RegisterSuccess<T> value) registerSuccess,
    required TResult Function(RegisterError<T> value) registerError,
    required TResult Function(ForgetPasswordLoading<T> value)
        forgetPasswordLoading,
    required TResult Function(ForgetPasswordSuccess<T> value)
        forgetPasswordSuccess,
    required TResult Function(ForgetPasswordError<T> value) forgetPasswordError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthInitial<T> value)? initial,
    TResult? Function(LoginLoading<T> value)? loginLoading,
    TResult? Function(LoginSuccess<T> value)? loginSuccess,
    TResult? Function(LoginError<T> value)? loginError,
    TResult? Function(RegisterLoading<T> value)? registerLoading,
    TResult? Function(RegisterSuccess<T> value)? registerSuccess,
    TResult? Function(RegisterError<T> value)? registerError,
    TResult? Function(ForgetPasswordLoading<T> value)? forgetPasswordLoading,
    TResult? Function(ForgetPasswordSuccess<T> value)? forgetPasswordSuccess,
    TResult? Function(ForgetPasswordError<T> value)? forgetPasswordError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthInitial<T> value)? initial,
    TResult Function(LoginLoading<T> value)? loginLoading,
    TResult Function(LoginSuccess<T> value)? loginSuccess,
    TResult Function(LoginError<T> value)? loginError,
    TResult Function(RegisterLoading<T> value)? registerLoading,
    TResult Function(RegisterSuccess<T> value)? registerSuccess,
    TResult Function(RegisterError<T> value)? registerError,
    TResult Function(ForgetPasswordLoading<T> value)? forgetPasswordLoading,
    TResult Function(ForgetPasswordSuccess<T> value)? forgetPasswordSuccess,
    TResult Function(ForgetPasswordError<T> value)? forgetPasswordError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStateCopyWith<T, $Res> {
  factory $AuthStateCopyWith(
          AuthState<T> value, $Res Function(AuthState<T>) then) =
      _$AuthStateCopyWithImpl<T, $Res, AuthState<T>>;
}

/// @nodoc
class _$AuthStateCopyWithImpl<T, $Res, $Val extends AuthState<T>>
    implements $AuthStateCopyWith<T, $Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$AuthInitialImplCopyWith<T, $Res> {
  factory _$$AuthInitialImplCopyWith(_$AuthInitialImpl<T> value,
          $Res Function(_$AuthInitialImpl<T>) then) =
      __$$AuthInitialImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$AuthInitialImplCopyWithImpl<T, $Res>
    extends _$AuthStateCopyWithImpl<T, $Res, _$AuthInitialImpl<T>>
    implements _$$AuthInitialImplCopyWith<T, $Res> {
  __$$AuthInitialImplCopyWithImpl(
      _$AuthInitialImpl<T> _value, $Res Function(_$AuthInitialImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$AuthInitialImpl<T> implements AuthInitial<T> {
  const _$AuthInitialImpl();

  @override
  String toString() {
    return 'AuthState<$T>.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AuthInitialImpl<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loginLoading,
    required TResult Function(T data) loginSuccess,
    required TResult Function(String message) loginError,
    required TResult Function() registerLoading,
    required TResult Function(T data) registerSuccess,
    required TResult Function(String message) registerError,
    required TResult Function() forgetPasswordLoading,
    required TResult Function(T data) forgetPasswordSuccess,
    required TResult Function(String message) forgetPasswordError,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loginLoading,
    TResult? Function(T data)? loginSuccess,
    TResult? Function(String message)? loginError,
    TResult? Function()? registerLoading,
    TResult? Function(T data)? registerSuccess,
    TResult? Function(String message)? registerError,
    TResult? Function()? forgetPasswordLoading,
    TResult? Function(T data)? forgetPasswordSuccess,
    TResult? Function(String message)? forgetPasswordError,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loginLoading,
    TResult Function(T data)? loginSuccess,
    TResult Function(String message)? loginError,
    TResult Function()? registerLoading,
    TResult Function(T data)? registerSuccess,
    TResult Function(String message)? registerError,
    TResult Function()? forgetPasswordLoading,
    TResult Function(T data)? forgetPasswordSuccess,
    TResult Function(String message)? forgetPasswordError,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthInitial<T> value) initial,
    required TResult Function(LoginLoading<T> value) loginLoading,
    required TResult Function(LoginSuccess<T> value) loginSuccess,
    required TResult Function(LoginError<T> value) loginError,
    required TResult Function(RegisterLoading<T> value) registerLoading,
    required TResult Function(RegisterSuccess<T> value) registerSuccess,
    required TResult Function(RegisterError<T> value) registerError,
    required TResult Function(ForgetPasswordLoading<T> value)
        forgetPasswordLoading,
    required TResult Function(ForgetPasswordSuccess<T> value)
        forgetPasswordSuccess,
    required TResult Function(ForgetPasswordError<T> value) forgetPasswordError,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthInitial<T> value)? initial,
    TResult? Function(LoginLoading<T> value)? loginLoading,
    TResult? Function(LoginSuccess<T> value)? loginSuccess,
    TResult? Function(LoginError<T> value)? loginError,
    TResult? Function(RegisterLoading<T> value)? registerLoading,
    TResult? Function(RegisterSuccess<T> value)? registerSuccess,
    TResult? Function(RegisterError<T> value)? registerError,
    TResult? Function(ForgetPasswordLoading<T> value)? forgetPasswordLoading,
    TResult? Function(ForgetPasswordSuccess<T> value)? forgetPasswordSuccess,
    TResult? Function(ForgetPasswordError<T> value)? forgetPasswordError,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthInitial<T> value)? initial,
    TResult Function(LoginLoading<T> value)? loginLoading,
    TResult Function(LoginSuccess<T> value)? loginSuccess,
    TResult Function(LoginError<T> value)? loginError,
    TResult Function(RegisterLoading<T> value)? registerLoading,
    TResult Function(RegisterSuccess<T> value)? registerSuccess,
    TResult Function(RegisterError<T> value)? registerError,
    TResult Function(ForgetPasswordLoading<T> value)? forgetPasswordLoading,
    TResult Function(ForgetPasswordSuccess<T> value)? forgetPasswordSuccess,
    TResult Function(ForgetPasswordError<T> value)? forgetPasswordError,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class AuthInitial<T> implements AuthState<T> {
  const factory AuthInitial() = _$AuthInitialImpl<T>;
}

/// @nodoc
abstract class _$$LoginLoadingImplCopyWith<T, $Res> {
  factory _$$LoginLoadingImplCopyWith(_$LoginLoadingImpl<T> value,
          $Res Function(_$LoginLoadingImpl<T>) then) =
      __$$LoginLoadingImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$LoginLoadingImplCopyWithImpl<T, $Res>
    extends _$AuthStateCopyWithImpl<T, $Res, _$LoginLoadingImpl<T>>
    implements _$$LoginLoadingImplCopyWith<T, $Res> {
  __$$LoginLoadingImplCopyWithImpl(
      _$LoginLoadingImpl<T> _value, $Res Function(_$LoginLoadingImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoginLoadingImpl<T> implements LoginLoading<T> {
  const _$LoginLoadingImpl();

  @override
  String toString() {
    return 'AuthState<$T>.loginLoading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoginLoadingImpl<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loginLoading,
    required TResult Function(T data) loginSuccess,
    required TResult Function(String message) loginError,
    required TResult Function() registerLoading,
    required TResult Function(T data) registerSuccess,
    required TResult Function(String message) registerError,
    required TResult Function() forgetPasswordLoading,
    required TResult Function(T data) forgetPasswordSuccess,
    required TResult Function(String message) forgetPasswordError,
  }) {
    return loginLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loginLoading,
    TResult? Function(T data)? loginSuccess,
    TResult? Function(String message)? loginError,
    TResult? Function()? registerLoading,
    TResult? Function(T data)? registerSuccess,
    TResult? Function(String message)? registerError,
    TResult? Function()? forgetPasswordLoading,
    TResult? Function(T data)? forgetPasswordSuccess,
    TResult? Function(String message)? forgetPasswordError,
  }) {
    return loginLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loginLoading,
    TResult Function(T data)? loginSuccess,
    TResult Function(String message)? loginError,
    TResult Function()? registerLoading,
    TResult Function(T data)? registerSuccess,
    TResult Function(String message)? registerError,
    TResult Function()? forgetPasswordLoading,
    TResult Function(T data)? forgetPasswordSuccess,
    TResult Function(String message)? forgetPasswordError,
    required TResult orElse(),
  }) {
    if (loginLoading != null) {
      return loginLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthInitial<T> value) initial,
    required TResult Function(LoginLoading<T> value) loginLoading,
    required TResult Function(LoginSuccess<T> value) loginSuccess,
    required TResult Function(LoginError<T> value) loginError,
    required TResult Function(RegisterLoading<T> value) registerLoading,
    required TResult Function(RegisterSuccess<T> value) registerSuccess,
    required TResult Function(RegisterError<T> value) registerError,
    required TResult Function(ForgetPasswordLoading<T> value)
        forgetPasswordLoading,
    required TResult Function(ForgetPasswordSuccess<T> value)
        forgetPasswordSuccess,
    required TResult Function(ForgetPasswordError<T> value) forgetPasswordError,
  }) {
    return loginLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthInitial<T> value)? initial,
    TResult? Function(LoginLoading<T> value)? loginLoading,
    TResult? Function(LoginSuccess<T> value)? loginSuccess,
    TResult? Function(LoginError<T> value)? loginError,
    TResult? Function(RegisterLoading<T> value)? registerLoading,
    TResult? Function(RegisterSuccess<T> value)? registerSuccess,
    TResult? Function(RegisterError<T> value)? registerError,
    TResult? Function(ForgetPasswordLoading<T> value)? forgetPasswordLoading,
    TResult? Function(ForgetPasswordSuccess<T> value)? forgetPasswordSuccess,
    TResult? Function(ForgetPasswordError<T> value)? forgetPasswordError,
  }) {
    return loginLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthInitial<T> value)? initial,
    TResult Function(LoginLoading<T> value)? loginLoading,
    TResult Function(LoginSuccess<T> value)? loginSuccess,
    TResult Function(LoginError<T> value)? loginError,
    TResult Function(RegisterLoading<T> value)? registerLoading,
    TResult Function(RegisterSuccess<T> value)? registerSuccess,
    TResult Function(RegisterError<T> value)? registerError,
    TResult Function(ForgetPasswordLoading<T> value)? forgetPasswordLoading,
    TResult Function(ForgetPasswordSuccess<T> value)? forgetPasswordSuccess,
    TResult Function(ForgetPasswordError<T> value)? forgetPasswordError,
    required TResult orElse(),
  }) {
    if (loginLoading != null) {
      return loginLoading(this);
    }
    return orElse();
  }
}

abstract class LoginLoading<T> implements AuthState<T> {
  const factory LoginLoading() = _$LoginLoadingImpl<T>;
}

/// @nodoc
abstract class _$$LoginSuccessImplCopyWith<T, $Res> {
  factory _$$LoginSuccessImplCopyWith(_$LoginSuccessImpl<T> value,
          $Res Function(_$LoginSuccessImpl<T>) then) =
      __$$LoginSuccessImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({T data});
}

/// @nodoc
class __$$LoginSuccessImplCopyWithImpl<T, $Res>
    extends _$AuthStateCopyWithImpl<T, $Res, _$LoginSuccessImpl<T>>
    implements _$$LoginSuccessImplCopyWith<T, $Res> {
  __$$LoginSuccessImplCopyWithImpl(
      _$LoginSuccessImpl<T> _value, $Res Function(_$LoginSuccessImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$LoginSuccessImpl<T>(
      freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$LoginSuccessImpl<T> implements LoginSuccess<T> {
  const _$LoginSuccessImpl(this.data);

  @override
  final T data;

  @override
  String toString() {
    return 'AuthState<$T>.loginSuccess(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginSuccessImpl<T> &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(data));

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginSuccessImplCopyWith<T, _$LoginSuccessImpl<T>> get copyWith =>
      __$$LoginSuccessImplCopyWithImpl<T, _$LoginSuccessImpl<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loginLoading,
    required TResult Function(T data) loginSuccess,
    required TResult Function(String message) loginError,
    required TResult Function() registerLoading,
    required TResult Function(T data) registerSuccess,
    required TResult Function(String message) registerError,
    required TResult Function() forgetPasswordLoading,
    required TResult Function(T data) forgetPasswordSuccess,
    required TResult Function(String message) forgetPasswordError,
  }) {
    return loginSuccess(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loginLoading,
    TResult? Function(T data)? loginSuccess,
    TResult? Function(String message)? loginError,
    TResult? Function()? registerLoading,
    TResult? Function(T data)? registerSuccess,
    TResult? Function(String message)? registerError,
    TResult? Function()? forgetPasswordLoading,
    TResult? Function(T data)? forgetPasswordSuccess,
    TResult? Function(String message)? forgetPasswordError,
  }) {
    return loginSuccess?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loginLoading,
    TResult Function(T data)? loginSuccess,
    TResult Function(String message)? loginError,
    TResult Function()? registerLoading,
    TResult Function(T data)? registerSuccess,
    TResult Function(String message)? registerError,
    TResult Function()? forgetPasswordLoading,
    TResult Function(T data)? forgetPasswordSuccess,
    TResult Function(String message)? forgetPasswordError,
    required TResult orElse(),
  }) {
    if (loginSuccess != null) {
      return loginSuccess(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthInitial<T> value) initial,
    required TResult Function(LoginLoading<T> value) loginLoading,
    required TResult Function(LoginSuccess<T> value) loginSuccess,
    required TResult Function(LoginError<T> value) loginError,
    required TResult Function(RegisterLoading<T> value) registerLoading,
    required TResult Function(RegisterSuccess<T> value) registerSuccess,
    required TResult Function(RegisterError<T> value) registerError,
    required TResult Function(ForgetPasswordLoading<T> value)
        forgetPasswordLoading,
    required TResult Function(ForgetPasswordSuccess<T> value)
        forgetPasswordSuccess,
    required TResult Function(ForgetPasswordError<T> value) forgetPasswordError,
  }) {
    return loginSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthInitial<T> value)? initial,
    TResult? Function(LoginLoading<T> value)? loginLoading,
    TResult? Function(LoginSuccess<T> value)? loginSuccess,
    TResult? Function(LoginError<T> value)? loginError,
    TResult? Function(RegisterLoading<T> value)? registerLoading,
    TResult? Function(RegisterSuccess<T> value)? registerSuccess,
    TResult? Function(RegisterError<T> value)? registerError,
    TResult? Function(ForgetPasswordLoading<T> value)? forgetPasswordLoading,
    TResult? Function(ForgetPasswordSuccess<T> value)? forgetPasswordSuccess,
    TResult? Function(ForgetPasswordError<T> value)? forgetPasswordError,
  }) {
    return loginSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthInitial<T> value)? initial,
    TResult Function(LoginLoading<T> value)? loginLoading,
    TResult Function(LoginSuccess<T> value)? loginSuccess,
    TResult Function(LoginError<T> value)? loginError,
    TResult Function(RegisterLoading<T> value)? registerLoading,
    TResult Function(RegisterSuccess<T> value)? registerSuccess,
    TResult Function(RegisterError<T> value)? registerError,
    TResult Function(ForgetPasswordLoading<T> value)? forgetPasswordLoading,
    TResult Function(ForgetPasswordSuccess<T> value)? forgetPasswordSuccess,
    TResult Function(ForgetPasswordError<T> value)? forgetPasswordError,
    required TResult orElse(),
  }) {
    if (loginSuccess != null) {
      return loginSuccess(this);
    }
    return orElse();
  }
}

abstract class LoginSuccess<T> implements AuthState<T> {
  const factory LoginSuccess(final T data) = _$LoginSuccessImpl<T>;

  T get data;

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoginSuccessImplCopyWith<T, _$LoginSuccessImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoginErrorImplCopyWith<T, $Res> {
  factory _$$LoginErrorImplCopyWith(
          _$LoginErrorImpl<T> value, $Res Function(_$LoginErrorImpl<T>) then) =
      __$$LoginErrorImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$LoginErrorImplCopyWithImpl<T, $Res>
    extends _$AuthStateCopyWithImpl<T, $Res, _$LoginErrorImpl<T>>
    implements _$$LoginErrorImplCopyWith<T, $Res> {
  __$$LoginErrorImplCopyWithImpl(
      _$LoginErrorImpl<T> _value, $Res Function(_$LoginErrorImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$LoginErrorImpl<T>(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$LoginErrorImpl<T> implements LoginError<T> {
  const _$LoginErrorImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'AuthState<$T>.loginError(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginErrorImpl<T> &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginErrorImplCopyWith<T, _$LoginErrorImpl<T>> get copyWith =>
      __$$LoginErrorImplCopyWithImpl<T, _$LoginErrorImpl<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loginLoading,
    required TResult Function(T data) loginSuccess,
    required TResult Function(String message) loginError,
    required TResult Function() registerLoading,
    required TResult Function(T data) registerSuccess,
    required TResult Function(String message) registerError,
    required TResult Function() forgetPasswordLoading,
    required TResult Function(T data) forgetPasswordSuccess,
    required TResult Function(String message) forgetPasswordError,
  }) {
    return loginError(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loginLoading,
    TResult? Function(T data)? loginSuccess,
    TResult? Function(String message)? loginError,
    TResult? Function()? registerLoading,
    TResult? Function(T data)? registerSuccess,
    TResult? Function(String message)? registerError,
    TResult? Function()? forgetPasswordLoading,
    TResult? Function(T data)? forgetPasswordSuccess,
    TResult? Function(String message)? forgetPasswordError,
  }) {
    return loginError?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loginLoading,
    TResult Function(T data)? loginSuccess,
    TResult Function(String message)? loginError,
    TResult Function()? registerLoading,
    TResult Function(T data)? registerSuccess,
    TResult Function(String message)? registerError,
    TResult Function()? forgetPasswordLoading,
    TResult Function(T data)? forgetPasswordSuccess,
    TResult Function(String message)? forgetPasswordError,
    required TResult orElse(),
  }) {
    if (loginError != null) {
      return loginError(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthInitial<T> value) initial,
    required TResult Function(LoginLoading<T> value) loginLoading,
    required TResult Function(LoginSuccess<T> value) loginSuccess,
    required TResult Function(LoginError<T> value) loginError,
    required TResult Function(RegisterLoading<T> value) registerLoading,
    required TResult Function(RegisterSuccess<T> value) registerSuccess,
    required TResult Function(RegisterError<T> value) registerError,
    required TResult Function(ForgetPasswordLoading<T> value)
        forgetPasswordLoading,
    required TResult Function(ForgetPasswordSuccess<T> value)
        forgetPasswordSuccess,
    required TResult Function(ForgetPasswordError<T> value) forgetPasswordError,
  }) {
    return loginError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthInitial<T> value)? initial,
    TResult? Function(LoginLoading<T> value)? loginLoading,
    TResult? Function(LoginSuccess<T> value)? loginSuccess,
    TResult? Function(LoginError<T> value)? loginError,
    TResult? Function(RegisterLoading<T> value)? registerLoading,
    TResult? Function(RegisterSuccess<T> value)? registerSuccess,
    TResult? Function(RegisterError<T> value)? registerError,
    TResult? Function(ForgetPasswordLoading<T> value)? forgetPasswordLoading,
    TResult? Function(ForgetPasswordSuccess<T> value)? forgetPasswordSuccess,
    TResult? Function(ForgetPasswordError<T> value)? forgetPasswordError,
  }) {
    return loginError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthInitial<T> value)? initial,
    TResult Function(LoginLoading<T> value)? loginLoading,
    TResult Function(LoginSuccess<T> value)? loginSuccess,
    TResult Function(LoginError<T> value)? loginError,
    TResult Function(RegisterLoading<T> value)? registerLoading,
    TResult Function(RegisterSuccess<T> value)? registerSuccess,
    TResult Function(RegisterError<T> value)? registerError,
    TResult Function(ForgetPasswordLoading<T> value)? forgetPasswordLoading,
    TResult Function(ForgetPasswordSuccess<T> value)? forgetPasswordSuccess,
    TResult Function(ForgetPasswordError<T> value)? forgetPasswordError,
    required TResult orElse(),
  }) {
    if (loginError != null) {
      return loginError(this);
    }
    return orElse();
  }
}

abstract class LoginError<T> implements AuthState<T> {
  const factory LoginError(final String message) = _$LoginErrorImpl<T>;

  String get message;

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoginErrorImplCopyWith<T, _$LoginErrorImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RegisterLoadingImplCopyWith<T, $Res> {
  factory _$$RegisterLoadingImplCopyWith(_$RegisterLoadingImpl<T> value,
          $Res Function(_$RegisterLoadingImpl<T>) then) =
      __$$RegisterLoadingImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$RegisterLoadingImplCopyWithImpl<T, $Res>
    extends _$AuthStateCopyWithImpl<T, $Res, _$RegisterLoadingImpl<T>>
    implements _$$RegisterLoadingImplCopyWith<T, $Res> {
  __$$RegisterLoadingImplCopyWithImpl(_$RegisterLoadingImpl<T> _value,
      $Res Function(_$RegisterLoadingImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$RegisterLoadingImpl<T> implements RegisterLoading<T> {
  const _$RegisterLoadingImpl();

  @override
  String toString() {
    return 'AuthState<$T>.registerLoading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$RegisterLoadingImpl<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loginLoading,
    required TResult Function(T data) loginSuccess,
    required TResult Function(String message) loginError,
    required TResult Function() registerLoading,
    required TResult Function(T data) registerSuccess,
    required TResult Function(String message) registerError,
    required TResult Function() forgetPasswordLoading,
    required TResult Function(T data) forgetPasswordSuccess,
    required TResult Function(String message) forgetPasswordError,
  }) {
    return registerLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loginLoading,
    TResult? Function(T data)? loginSuccess,
    TResult? Function(String message)? loginError,
    TResult? Function()? registerLoading,
    TResult? Function(T data)? registerSuccess,
    TResult? Function(String message)? registerError,
    TResult? Function()? forgetPasswordLoading,
    TResult? Function(T data)? forgetPasswordSuccess,
    TResult? Function(String message)? forgetPasswordError,
  }) {
    return registerLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loginLoading,
    TResult Function(T data)? loginSuccess,
    TResult Function(String message)? loginError,
    TResult Function()? registerLoading,
    TResult Function(T data)? registerSuccess,
    TResult Function(String message)? registerError,
    TResult Function()? forgetPasswordLoading,
    TResult Function(T data)? forgetPasswordSuccess,
    TResult Function(String message)? forgetPasswordError,
    required TResult orElse(),
  }) {
    if (registerLoading != null) {
      return registerLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthInitial<T> value) initial,
    required TResult Function(LoginLoading<T> value) loginLoading,
    required TResult Function(LoginSuccess<T> value) loginSuccess,
    required TResult Function(LoginError<T> value) loginError,
    required TResult Function(RegisterLoading<T> value) registerLoading,
    required TResult Function(RegisterSuccess<T> value) registerSuccess,
    required TResult Function(RegisterError<T> value) registerError,
    required TResult Function(ForgetPasswordLoading<T> value)
        forgetPasswordLoading,
    required TResult Function(ForgetPasswordSuccess<T> value)
        forgetPasswordSuccess,
    required TResult Function(ForgetPasswordError<T> value) forgetPasswordError,
  }) {
    return registerLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthInitial<T> value)? initial,
    TResult? Function(LoginLoading<T> value)? loginLoading,
    TResult? Function(LoginSuccess<T> value)? loginSuccess,
    TResult? Function(LoginError<T> value)? loginError,
    TResult? Function(RegisterLoading<T> value)? registerLoading,
    TResult? Function(RegisterSuccess<T> value)? registerSuccess,
    TResult? Function(RegisterError<T> value)? registerError,
    TResult? Function(ForgetPasswordLoading<T> value)? forgetPasswordLoading,
    TResult? Function(ForgetPasswordSuccess<T> value)? forgetPasswordSuccess,
    TResult? Function(ForgetPasswordError<T> value)? forgetPasswordError,
  }) {
    return registerLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthInitial<T> value)? initial,
    TResult Function(LoginLoading<T> value)? loginLoading,
    TResult Function(LoginSuccess<T> value)? loginSuccess,
    TResult Function(LoginError<T> value)? loginError,
    TResult Function(RegisterLoading<T> value)? registerLoading,
    TResult Function(RegisterSuccess<T> value)? registerSuccess,
    TResult Function(RegisterError<T> value)? registerError,
    TResult Function(ForgetPasswordLoading<T> value)? forgetPasswordLoading,
    TResult Function(ForgetPasswordSuccess<T> value)? forgetPasswordSuccess,
    TResult Function(ForgetPasswordError<T> value)? forgetPasswordError,
    required TResult orElse(),
  }) {
    if (registerLoading != null) {
      return registerLoading(this);
    }
    return orElse();
  }
}

abstract class RegisterLoading<T> implements AuthState<T> {
  const factory RegisterLoading() = _$RegisterLoadingImpl<T>;
}

/// @nodoc
abstract class _$$RegisterSuccessImplCopyWith<T, $Res> {
  factory _$$RegisterSuccessImplCopyWith(_$RegisterSuccessImpl<T> value,
          $Res Function(_$RegisterSuccessImpl<T>) then) =
      __$$RegisterSuccessImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({T data});
}

/// @nodoc
class __$$RegisterSuccessImplCopyWithImpl<T, $Res>
    extends _$AuthStateCopyWithImpl<T, $Res, _$RegisterSuccessImpl<T>>
    implements _$$RegisterSuccessImplCopyWith<T, $Res> {
  __$$RegisterSuccessImplCopyWithImpl(_$RegisterSuccessImpl<T> _value,
      $Res Function(_$RegisterSuccessImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$RegisterSuccessImpl<T>(
      freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$RegisterSuccessImpl<T> implements RegisterSuccess<T> {
  const _$RegisterSuccessImpl(this.data);

  @override
  final T data;

  @override
  String toString() {
    return 'AuthState<$T>.registerSuccess(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegisterSuccessImpl<T> &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(data));

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RegisterSuccessImplCopyWith<T, _$RegisterSuccessImpl<T>> get copyWith =>
      __$$RegisterSuccessImplCopyWithImpl<T, _$RegisterSuccessImpl<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loginLoading,
    required TResult Function(T data) loginSuccess,
    required TResult Function(String message) loginError,
    required TResult Function() registerLoading,
    required TResult Function(T data) registerSuccess,
    required TResult Function(String message) registerError,
    required TResult Function() forgetPasswordLoading,
    required TResult Function(T data) forgetPasswordSuccess,
    required TResult Function(String message) forgetPasswordError,
  }) {
    return registerSuccess(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loginLoading,
    TResult? Function(T data)? loginSuccess,
    TResult? Function(String message)? loginError,
    TResult? Function()? registerLoading,
    TResult? Function(T data)? registerSuccess,
    TResult? Function(String message)? registerError,
    TResult? Function()? forgetPasswordLoading,
    TResult? Function(T data)? forgetPasswordSuccess,
    TResult? Function(String message)? forgetPasswordError,
  }) {
    return registerSuccess?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loginLoading,
    TResult Function(T data)? loginSuccess,
    TResult Function(String message)? loginError,
    TResult Function()? registerLoading,
    TResult Function(T data)? registerSuccess,
    TResult Function(String message)? registerError,
    TResult Function()? forgetPasswordLoading,
    TResult Function(T data)? forgetPasswordSuccess,
    TResult Function(String message)? forgetPasswordError,
    required TResult orElse(),
  }) {
    if (registerSuccess != null) {
      return registerSuccess(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthInitial<T> value) initial,
    required TResult Function(LoginLoading<T> value) loginLoading,
    required TResult Function(LoginSuccess<T> value) loginSuccess,
    required TResult Function(LoginError<T> value) loginError,
    required TResult Function(RegisterLoading<T> value) registerLoading,
    required TResult Function(RegisterSuccess<T> value) registerSuccess,
    required TResult Function(RegisterError<T> value) registerError,
    required TResult Function(ForgetPasswordLoading<T> value)
        forgetPasswordLoading,
    required TResult Function(ForgetPasswordSuccess<T> value)
        forgetPasswordSuccess,
    required TResult Function(ForgetPasswordError<T> value) forgetPasswordError,
  }) {
    return registerSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthInitial<T> value)? initial,
    TResult? Function(LoginLoading<T> value)? loginLoading,
    TResult? Function(LoginSuccess<T> value)? loginSuccess,
    TResult? Function(LoginError<T> value)? loginError,
    TResult? Function(RegisterLoading<T> value)? registerLoading,
    TResult? Function(RegisterSuccess<T> value)? registerSuccess,
    TResult? Function(RegisterError<T> value)? registerError,
    TResult? Function(ForgetPasswordLoading<T> value)? forgetPasswordLoading,
    TResult? Function(ForgetPasswordSuccess<T> value)? forgetPasswordSuccess,
    TResult? Function(ForgetPasswordError<T> value)? forgetPasswordError,
  }) {
    return registerSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthInitial<T> value)? initial,
    TResult Function(LoginLoading<T> value)? loginLoading,
    TResult Function(LoginSuccess<T> value)? loginSuccess,
    TResult Function(LoginError<T> value)? loginError,
    TResult Function(RegisterLoading<T> value)? registerLoading,
    TResult Function(RegisterSuccess<T> value)? registerSuccess,
    TResult Function(RegisterError<T> value)? registerError,
    TResult Function(ForgetPasswordLoading<T> value)? forgetPasswordLoading,
    TResult Function(ForgetPasswordSuccess<T> value)? forgetPasswordSuccess,
    TResult Function(ForgetPasswordError<T> value)? forgetPasswordError,
    required TResult orElse(),
  }) {
    if (registerSuccess != null) {
      return registerSuccess(this);
    }
    return orElse();
  }
}

abstract class RegisterSuccess<T> implements AuthState<T> {
  const factory RegisterSuccess(final T data) = _$RegisterSuccessImpl<T>;

  T get data;

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RegisterSuccessImplCopyWith<T, _$RegisterSuccessImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RegisterErrorImplCopyWith<T, $Res> {
  factory _$$RegisterErrorImplCopyWith(_$RegisterErrorImpl<T> value,
          $Res Function(_$RegisterErrorImpl<T>) then) =
      __$$RegisterErrorImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$RegisterErrorImplCopyWithImpl<T, $Res>
    extends _$AuthStateCopyWithImpl<T, $Res, _$RegisterErrorImpl<T>>
    implements _$$RegisterErrorImplCopyWith<T, $Res> {
  __$$RegisterErrorImplCopyWithImpl(_$RegisterErrorImpl<T> _value,
      $Res Function(_$RegisterErrorImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$RegisterErrorImpl<T>(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$RegisterErrorImpl<T> implements RegisterError<T> {
  const _$RegisterErrorImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'AuthState<$T>.registerError(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegisterErrorImpl<T> &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RegisterErrorImplCopyWith<T, _$RegisterErrorImpl<T>> get copyWith =>
      __$$RegisterErrorImplCopyWithImpl<T, _$RegisterErrorImpl<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loginLoading,
    required TResult Function(T data) loginSuccess,
    required TResult Function(String message) loginError,
    required TResult Function() registerLoading,
    required TResult Function(T data) registerSuccess,
    required TResult Function(String message) registerError,
    required TResult Function() forgetPasswordLoading,
    required TResult Function(T data) forgetPasswordSuccess,
    required TResult Function(String message) forgetPasswordError,
  }) {
    return registerError(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loginLoading,
    TResult? Function(T data)? loginSuccess,
    TResult? Function(String message)? loginError,
    TResult? Function()? registerLoading,
    TResult? Function(T data)? registerSuccess,
    TResult? Function(String message)? registerError,
    TResult? Function()? forgetPasswordLoading,
    TResult? Function(T data)? forgetPasswordSuccess,
    TResult? Function(String message)? forgetPasswordError,
  }) {
    return registerError?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loginLoading,
    TResult Function(T data)? loginSuccess,
    TResult Function(String message)? loginError,
    TResult Function()? registerLoading,
    TResult Function(T data)? registerSuccess,
    TResult Function(String message)? registerError,
    TResult Function()? forgetPasswordLoading,
    TResult Function(T data)? forgetPasswordSuccess,
    TResult Function(String message)? forgetPasswordError,
    required TResult orElse(),
  }) {
    if (registerError != null) {
      return registerError(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthInitial<T> value) initial,
    required TResult Function(LoginLoading<T> value) loginLoading,
    required TResult Function(LoginSuccess<T> value) loginSuccess,
    required TResult Function(LoginError<T> value) loginError,
    required TResult Function(RegisterLoading<T> value) registerLoading,
    required TResult Function(RegisterSuccess<T> value) registerSuccess,
    required TResult Function(RegisterError<T> value) registerError,
    required TResult Function(ForgetPasswordLoading<T> value)
        forgetPasswordLoading,
    required TResult Function(ForgetPasswordSuccess<T> value)
        forgetPasswordSuccess,
    required TResult Function(ForgetPasswordError<T> value) forgetPasswordError,
  }) {
    return registerError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthInitial<T> value)? initial,
    TResult? Function(LoginLoading<T> value)? loginLoading,
    TResult? Function(LoginSuccess<T> value)? loginSuccess,
    TResult? Function(LoginError<T> value)? loginError,
    TResult? Function(RegisterLoading<T> value)? registerLoading,
    TResult? Function(RegisterSuccess<T> value)? registerSuccess,
    TResult? Function(RegisterError<T> value)? registerError,
    TResult? Function(ForgetPasswordLoading<T> value)? forgetPasswordLoading,
    TResult? Function(ForgetPasswordSuccess<T> value)? forgetPasswordSuccess,
    TResult? Function(ForgetPasswordError<T> value)? forgetPasswordError,
  }) {
    return registerError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthInitial<T> value)? initial,
    TResult Function(LoginLoading<T> value)? loginLoading,
    TResult Function(LoginSuccess<T> value)? loginSuccess,
    TResult Function(LoginError<T> value)? loginError,
    TResult Function(RegisterLoading<T> value)? registerLoading,
    TResult Function(RegisterSuccess<T> value)? registerSuccess,
    TResult Function(RegisterError<T> value)? registerError,
    TResult Function(ForgetPasswordLoading<T> value)? forgetPasswordLoading,
    TResult Function(ForgetPasswordSuccess<T> value)? forgetPasswordSuccess,
    TResult Function(ForgetPasswordError<T> value)? forgetPasswordError,
    required TResult orElse(),
  }) {
    if (registerError != null) {
      return registerError(this);
    }
    return orElse();
  }
}

abstract class RegisterError<T> implements AuthState<T> {
  const factory RegisterError(final String message) = _$RegisterErrorImpl<T>;

  String get message;

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RegisterErrorImplCopyWith<T, _$RegisterErrorImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ForgetPasswordLoadingImplCopyWith<T, $Res> {
  factory _$$ForgetPasswordLoadingImplCopyWith(
          _$ForgetPasswordLoadingImpl<T> value,
          $Res Function(_$ForgetPasswordLoadingImpl<T>) then) =
      __$$ForgetPasswordLoadingImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$ForgetPasswordLoadingImplCopyWithImpl<T, $Res>
    extends _$AuthStateCopyWithImpl<T, $Res, _$ForgetPasswordLoadingImpl<T>>
    implements _$$ForgetPasswordLoadingImplCopyWith<T, $Res> {
  __$$ForgetPasswordLoadingImplCopyWithImpl(
      _$ForgetPasswordLoadingImpl<T> _value,
      $Res Function(_$ForgetPasswordLoadingImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ForgetPasswordLoadingImpl<T> implements ForgetPasswordLoading<T> {
  const _$ForgetPasswordLoadingImpl();

  @override
  String toString() {
    return 'AuthState<$T>.forgetPasswordLoading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ForgetPasswordLoadingImpl<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loginLoading,
    required TResult Function(T data) loginSuccess,
    required TResult Function(String message) loginError,
    required TResult Function() registerLoading,
    required TResult Function(T data) registerSuccess,
    required TResult Function(String message) registerError,
    required TResult Function() forgetPasswordLoading,
    required TResult Function(T data) forgetPasswordSuccess,
    required TResult Function(String message) forgetPasswordError,
  }) {
    return forgetPasswordLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loginLoading,
    TResult? Function(T data)? loginSuccess,
    TResult? Function(String message)? loginError,
    TResult? Function()? registerLoading,
    TResult? Function(T data)? registerSuccess,
    TResult? Function(String message)? registerError,
    TResult? Function()? forgetPasswordLoading,
    TResult? Function(T data)? forgetPasswordSuccess,
    TResult? Function(String message)? forgetPasswordError,
  }) {
    return forgetPasswordLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loginLoading,
    TResult Function(T data)? loginSuccess,
    TResult Function(String message)? loginError,
    TResult Function()? registerLoading,
    TResult Function(T data)? registerSuccess,
    TResult Function(String message)? registerError,
    TResult Function()? forgetPasswordLoading,
    TResult Function(T data)? forgetPasswordSuccess,
    TResult Function(String message)? forgetPasswordError,
    required TResult orElse(),
  }) {
    if (forgetPasswordLoading != null) {
      return forgetPasswordLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthInitial<T> value) initial,
    required TResult Function(LoginLoading<T> value) loginLoading,
    required TResult Function(LoginSuccess<T> value) loginSuccess,
    required TResult Function(LoginError<T> value) loginError,
    required TResult Function(RegisterLoading<T> value) registerLoading,
    required TResult Function(RegisterSuccess<T> value) registerSuccess,
    required TResult Function(RegisterError<T> value) registerError,
    required TResult Function(ForgetPasswordLoading<T> value)
        forgetPasswordLoading,
    required TResult Function(ForgetPasswordSuccess<T> value)
        forgetPasswordSuccess,
    required TResult Function(ForgetPasswordError<T> value) forgetPasswordError,
  }) {
    return forgetPasswordLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthInitial<T> value)? initial,
    TResult? Function(LoginLoading<T> value)? loginLoading,
    TResult? Function(LoginSuccess<T> value)? loginSuccess,
    TResult? Function(LoginError<T> value)? loginError,
    TResult? Function(RegisterLoading<T> value)? registerLoading,
    TResult? Function(RegisterSuccess<T> value)? registerSuccess,
    TResult? Function(RegisterError<T> value)? registerError,
    TResult? Function(ForgetPasswordLoading<T> value)? forgetPasswordLoading,
    TResult? Function(ForgetPasswordSuccess<T> value)? forgetPasswordSuccess,
    TResult? Function(ForgetPasswordError<T> value)? forgetPasswordError,
  }) {
    return forgetPasswordLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthInitial<T> value)? initial,
    TResult Function(LoginLoading<T> value)? loginLoading,
    TResult Function(LoginSuccess<T> value)? loginSuccess,
    TResult Function(LoginError<T> value)? loginError,
    TResult Function(RegisterLoading<T> value)? registerLoading,
    TResult Function(RegisterSuccess<T> value)? registerSuccess,
    TResult Function(RegisterError<T> value)? registerError,
    TResult Function(ForgetPasswordLoading<T> value)? forgetPasswordLoading,
    TResult Function(ForgetPasswordSuccess<T> value)? forgetPasswordSuccess,
    TResult Function(ForgetPasswordError<T> value)? forgetPasswordError,
    required TResult orElse(),
  }) {
    if (forgetPasswordLoading != null) {
      return forgetPasswordLoading(this);
    }
    return orElse();
  }
}

abstract class ForgetPasswordLoading<T> implements AuthState<T> {
  const factory ForgetPasswordLoading() = _$ForgetPasswordLoadingImpl<T>;
}

/// @nodoc
abstract class _$$ForgetPasswordSuccessImplCopyWith<T, $Res> {
  factory _$$ForgetPasswordSuccessImplCopyWith(
          _$ForgetPasswordSuccessImpl<T> value,
          $Res Function(_$ForgetPasswordSuccessImpl<T>) then) =
      __$$ForgetPasswordSuccessImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({T data});
}

/// @nodoc
class __$$ForgetPasswordSuccessImplCopyWithImpl<T, $Res>
    extends _$AuthStateCopyWithImpl<T, $Res, _$ForgetPasswordSuccessImpl<T>>
    implements _$$ForgetPasswordSuccessImplCopyWith<T, $Res> {
  __$$ForgetPasswordSuccessImplCopyWithImpl(
      _$ForgetPasswordSuccessImpl<T> _value,
      $Res Function(_$ForgetPasswordSuccessImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$ForgetPasswordSuccessImpl<T>(
      freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$ForgetPasswordSuccessImpl<T> implements ForgetPasswordSuccess<T> {
  const _$ForgetPasswordSuccessImpl(this.data);

  @override
  final T data;

  @override
  String toString() {
    return 'AuthState<$T>.forgetPasswordSuccess(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ForgetPasswordSuccessImpl<T> &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(data));

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ForgetPasswordSuccessImplCopyWith<T, _$ForgetPasswordSuccessImpl<T>>
      get copyWith => __$$ForgetPasswordSuccessImplCopyWithImpl<T,
          _$ForgetPasswordSuccessImpl<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loginLoading,
    required TResult Function(T data) loginSuccess,
    required TResult Function(String message) loginError,
    required TResult Function() registerLoading,
    required TResult Function(T data) registerSuccess,
    required TResult Function(String message) registerError,
    required TResult Function() forgetPasswordLoading,
    required TResult Function(T data) forgetPasswordSuccess,
    required TResult Function(String message) forgetPasswordError,
  }) {
    return forgetPasswordSuccess(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loginLoading,
    TResult? Function(T data)? loginSuccess,
    TResult? Function(String message)? loginError,
    TResult? Function()? registerLoading,
    TResult? Function(T data)? registerSuccess,
    TResult? Function(String message)? registerError,
    TResult? Function()? forgetPasswordLoading,
    TResult? Function(T data)? forgetPasswordSuccess,
    TResult? Function(String message)? forgetPasswordError,
  }) {
    return forgetPasswordSuccess?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loginLoading,
    TResult Function(T data)? loginSuccess,
    TResult Function(String message)? loginError,
    TResult Function()? registerLoading,
    TResult Function(T data)? registerSuccess,
    TResult Function(String message)? registerError,
    TResult Function()? forgetPasswordLoading,
    TResult Function(T data)? forgetPasswordSuccess,
    TResult Function(String message)? forgetPasswordError,
    required TResult orElse(),
  }) {
    if (forgetPasswordSuccess != null) {
      return forgetPasswordSuccess(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthInitial<T> value) initial,
    required TResult Function(LoginLoading<T> value) loginLoading,
    required TResult Function(LoginSuccess<T> value) loginSuccess,
    required TResult Function(LoginError<T> value) loginError,
    required TResult Function(RegisterLoading<T> value) registerLoading,
    required TResult Function(RegisterSuccess<T> value) registerSuccess,
    required TResult Function(RegisterError<T> value) registerError,
    required TResult Function(ForgetPasswordLoading<T> value)
        forgetPasswordLoading,
    required TResult Function(ForgetPasswordSuccess<T> value)
        forgetPasswordSuccess,
    required TResult Function(ForgetPasswordError<T> value) forgetPasswordError,
  }) {
    return forgetPasswordSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthInitial<T> value)? initial,
    TResult? Function(LoginLoading<T> value)? loginLoading,
    TResult? Function(LoginSuccess<T> value)? loginSuccess,
    TResult? Function(LoginError<T> value)? loginError,
    TResult? Function(RegisterLoading<T> value)? registerLoading,
    TResult? Function(RegisterSuccess<T> value)? registerSuccess,
    TResult? Function(RegisterError<T> value)? registerError,
    TResult? Function(ForgetPasswordLoading<T> value)? forgetPasswordLoading,
    TResult? Function(ForgetPasswordSuccess<T> value)? forgetPasswordSuccess,
    TResult? Function(ForgetPasswordError<T> value)? forgetPasswordError,
  }) {
    return forgetPasswordSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthInitial<T> value)? initial,
    TResult Function(LoginLoading<T> value)? loginLoading,
    TResult Function(LoginSuccess<T> value)? loginSuccess,
    TResult Function(LoginError<T> value)? loginError,
    TResult Function(RegisterLoading<T> value)? registerLoading,
    TResult Function(RegisterSuccess<T> value)? registerSuccess,
    TResult Function(RegisterError<T> value)? registerError,
    TResult Function(ForgetPasswordLoading<T> value)? forgetPasswordLoading,
    TResult Function(ForgetPasswordSuccess<T> value)? forgetPasswordSuccess,
    TResult Function(ForgetPasswordError<T> value)? forgetPasswordError,
    required TResult orElse(),
  }) {
    if (forgetPasswordSuccess != null) {
      return forgetPasswordSuccess(this);
    }
    return orElse();
  }
}

abstract class ForgetPasswordSuccess<T> implements AuthState<T> {
  const factory ForgetPasswordSuccess(final T data) =
      _$ForgetPasswordSuccessImpl<T>;

  T get data;

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ForgetPasswordSuccessImplCopyWith<T, _$ForgetPasswordSuccessImpl<T>>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ForgetPasswordErrorImplCopyWith<T, $Res> {
  factory _$$ForgetPasswordErrorImplCopyWith(_$ForgetPasswordErrorImpl<T> value,
          $Res Function(_$ForgetPasswordErrorImpl<T>) then) =
      __$$ForgetPasswordErrorImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$ForgetPasswordErrorImplCopyWithImpl<T, $Res>
    extends _$AuthStateCopyWithImpl<T, $Res, _$ForgetPasswordErrorImpl<T>>
    implements _$$ForgetPasswordErrorImplCopyWith<T, $Res> {
  __$$ForgetPasswordErrorImplCopyWithImpl(_$ForgetPasswordErrorImpl<T> _value,
      $Res Function(_$ForgetPasswordErrorImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$ForgetPasswordErrorImpl<T>(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ForgetPasswordErrorImpl<T> implements ForgetPasswordError<T> {
  const _$ForgetPasswordErrorImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'AuthState<$T>.forgetPasswordError(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ForgetPasswordErrorImpl<T> &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ForgetPasswordErrorImplCopyWith<T, _$ForgetPasswordErrorImpl<T>>
      get copyWith => __$$ForgetPasswordErrorImplCopyWithImpl<T,
          _$ForgetPasswordErrorImpl<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loginLoading,
    required TResult Function(T data) loginSuccess,
    required TResult Function(String message) loginError,
    required TResult Function() registerLoading,
    required TResult Function(T data) registerSuccess,
    required TResult Function(String message) registerError,
    required TResult Function() forgetPasswordLoading,
    required TResult Function(T data) forgetPasswordSuccess,
    required TResult Function(String message) forgetPasswordError,
  }) {
    return forgetPasswordError(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loginLoading,
    TResult? Function(T data)? loginSuccess,
    TResult? Function(String message)? loginError,
    TResult? Function()? registerLoading,
    TResult? Function(T data)? registerSuccess,
    TResult? Function(String message)? registerError,
    TResult? Function()? forgetPasswordLoading,
    TResult? Function(T data)? forgetPasswordSuccess,
    TResult? Function(String message)? forgetPasswordError,
  }) {
    return forgetPasswordError?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loginLoading,
    TResult Function(T data)? loginSuccess,
    TResult Function(String message)? loginError,
    TResult Function()? registerLoading,
    TResult Function(T data)? registerSuccess,
    TResult Function(String message)? registerError,
    TResult Function()? forgetPasswordLoading,
    TResult Function(T data)? forgetPasswordSuccess,
    TResult Function(String message)? forgetPasswordError,
    required TResult orElse(),
  }) {
    if (forgetPasswordError != null) {
      return forgetPasswordError(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthInitial<T> value) initial,
    required TResult Function(LoginLoading<T> value) loginLoading,
    required TResult Function(LoginSuccess<T> value) loginSuccess,
    required TResult Function(LoginError<T> value) loginError,
    required TResult Function(RegisterLoading<T> value) registerLoading,
    required TResult Function(RegisterSuccess<T> value) registerSuccess,
    required TResult Function(RegisterError<T> value) registerError,
    required TResult Function(ForgetPasswordLoading<T> value)
        forgetPasswordLoading,
    required TResult Function(ForgetPasswordSuccess<T> value)
        forgetPasswordSuccess,
    required TResult Function(ForgetPasswordError<T> value) forgetPasswordError,
  }) {
    return forgetPasswordError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthInitial<T> value)? initial,
    TResult? Function(LoginLoading<T> value)? loginLoading,
    TResult? Function(LoginSuccess<T> value)? loginSuccess,
    TResult? Function(LoginError<T> value)? loginError,
    TResult? Function(RegisterLoading<T> value)? registerLoading,
    TResult? Function(RegisterSuccess<T> value)? registerSuccess,
    TResult? Function(RegisterError<T> value)? registerError,
    TResult? Function(ForgetPasswordLoading<T> value)? forgetPasswordLoading,
    TResult? Function(ForgetPasswordSuccess<T> value)? forgetPasswordSuccess,
    TResult? Function(ForgetPasswordError<T> value)? forgetPasswordError,
  }) {
    return forgetPasswordError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthInitial<T> value)? initial,
    TResult Function(LoginLoading<T> value)? loginLoading,
    TResult Function(LoginSuccess<T> value)? loginSuccess,
    TResult Function(LoginError<T> value)? loginError,
    TResult Function(RegisterLoading<T> value)? registerLoading,
    TResult Function(RegisterSuccess<T> value)? registerSuccess,
    TResult Function(RegisterError<T> value)? registerError,
    TResult Function(ForgetPasswordLoading<T> value)? forgetPasswordLoading,
    TResult Function(ForgetPasswordSuccess<T> value)? forgetPasswordSuccess,
    TResult Function(ForgetPasswordError<T> value)? forgetPasswordError,
    required TResult orElse(),
  }) {
    if (forgetPasswordError != null) {
      return forgetPasswordError(this);
    }
    return orElse();
  }
}

abstract class ForgetPasswordError<T> implements AuthState<T> {
  const factory ForgetPasswordError(final String message) =
      _$ForgetPasswordErrorImpl<T>;

  String get message;

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ForgetPasswordErrorImplCopyWith<T, _$ForgetPasswordErrorImpl<T>>
      get copyWith => throw _privateConstructorUsedError;
}
