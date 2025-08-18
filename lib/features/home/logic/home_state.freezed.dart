// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$HomeState<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() banksLoading,
    required TResult Function(T data) banksSuccess,
    required TResult Function(String errorMessage) banksFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? banksLoading,
    TResult? Function(T data)? banksSuccess,
    TResult? Function(String errorMessage)? banksFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? banksLoading,
    TResult Function(T data)? banksSuccess,
    TResult Function(String errorMessage)? banksFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HomeInitial<T> value) initial,
    required TResult Function(BanksLoading<T> value) banksLoading,
    required TResult Function(BanksSuccess<T> value) banksSuccess,
    required TResult Function(BankseFailure<T> value) banksFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HomeInitial<T> value)? initial,
    TResult? Function(BanksLoading<T> value)? banksLoading,
    TResult? Function(BanksSuccess<T> value)? banksSuccess,
    TResult? Function(BankseFailure<T> value)? banksFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HomeInitial<T> value)? initial,
    TResult Function(BanksLoading<T> value)? banksLoading,
    TResult Function(BanksSuccess<T> value)? banksSuccess,
    TResult Function(BankseFailure<T> value)? banksFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStateCopyWith<T, $Res> {
  factory $HomeStateCopyWith(
          HomeState<T> value, $Res Function(HomeState<T>) then) =
      _$HomeStateCopyWithImpl<T, $Res, HomeState<T>>;
}

/// @nodoc
class _$HomeStateCopyWithImpl<T, $Res, $Val extends HomeState<T>>
    implements $HomeStateCopyWith<T, $Res> {
  _$HomeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$HomeInitialImplCopyWith<T, $Res> {
  factory _$$HomeInitialImplCopyWith(_$HomeInitialImpl<T> value,
          $Res Function(_$HomeInitialImpl<T>) then) =
      __$$HomeInitialImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$HomeInitialImplCopyWithImpl<T, $Res>
    extends _$HomeStateCopyWithImpl<T, $Res, _$HomeInitialImpl<T>>
    implements _$$HomeInitialImplCopyWith<T, $Res> {
  __$$HomeInitialImplCopyWithImpl(
      _$HomeInitialImpl<T> _value, $Res Function(_$HomeInitialImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$HomeInitialImpl<T> implements HomeInitial<T> {
  const _$HomeInitialImpl();

  @override
  String toString() {
    return 'HomeState<$T>.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$HomeInitialImpl<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() banksLoading,
    required TResult Function(T data) banksSuccess,
    required TResult Function(String errorMessage) banksFailure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? banksLoading,
    TResult? Function(T data)? banksSuccess,
    TResult? Function(String errorMessage)? banksFailure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? banksLoading,
    TResult Function(T data)? banksSuccess,
    TResult Function(String errorMessage)? banksFailure,
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
    required TResult Function(HomeInitial<T> value) initial,
    required TResult Function(BanksLoading<T> value) banksLoading,
    required TResult Function(BanksSuccess<T> value) banksSuccess,
    required TResult Function(BankseFailure<T> value) banksFailure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HomeInitial<T> value)? initial,
    TResult? Function(BanksLoading<T> value)? banksLoading,
    TResult? Function(BanksSuccess<T> value)? banksSuccess,
    TResult? Function(BankseFailure<T> value)? banksFailure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HomeInitial<T> value)? initial,
    TResult Function(BanksLoading<T> value)? banksLoading,
    TResult Function(BanksSuccess<T> value)? banksSuccess,
    TResult Function(BankseFailure<T> value)? banksFailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class HomeInitial<T> implements HomeState<T> {
  const factory HomeInitial() = _$HomeInitialImpl<T>;
}

/// @nodoc
abstract class _$$BanksLoadingImplCopyWith<T, $Res> {
  factory _$$BanksLoadingImplCopyWith(_$BanksLoadingImpl<T> value,
          $Res Function(_$BanksLoadingImpl<T>) then) =
      __$$BanksLoadingImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$BanksLoadingImplCopyWithImpl<T, $Res>
    extends _$HomeStateCopyWithImpl<T, $Res, _$BanksLoadingImpl<T>>
    implements _$$BanksLoadingImplCopyWith<T, $Res> {
  __$$BanksLoadingImplCopyWithImpl(
      _$BanksLoadingImpl<T> _value, $Res Function(_$BanksLoadingImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$BanksLoadingImpl<T> implements BanksLoading<T> {
  const _$BanksLoadingImpl();

  @override
  String toString() {
    return 'HomeState<$T>.banksLoading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$BanksLoadingImpl<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() banksLoading,
    required TResult Function(T data) banksSuccess,
    required TResult Function(String errorMessage) banksFailure,
  }) {
    return banksLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? banksLoading,
    TResult? Function(T data)? banksSuccess,
    TResult? Function(String errorMessage)? banksFailure,
  }) {
    return banksLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? banksLoading,
    TResult Function(T data)? banksSuccess,
    TResult Function(String errorMessage)? banksFailure,
    required TResult orElse(),
  }) {
    if (banksLoading != null) {
      return banksLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HomeInitial<T> value) initial,
    required TResult Function(BanksLoading<T> value) banksLoading,
    required TResult Function(BanksSuccess<T> value) banksSuccess,
    required TResult Function(BankseFailure<T> value) banksFailure,
  }) {
    return banksLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HomeInitial<T> value)? initial,
    TResult? Function(BanksLoading<T> value)? banksLoading,
    TResult? Function(BanksSuccess<T> value)? banksSuccess,
    TResult? Function(BankseFailure<T> value)? banksFailure,
  }) {
    return banksLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HomeInitial<T> value)? initial,
    TResult Function(BanksLoading<T> value)? banksLoading,
    TResult Function(BanksSuccess<T> value)? banksSuccess,
    TResult Function(BankseFailure<T> value)? banksFailure,
    required TResult orElse(),
  }) {
    if (banksLoading != null) {
      return banksLoading(this);
    }
    return orElse();
  }
}

abstract class BanksLoading<T> implements HomeState<T> {
  const factory BanksLoading() = _$BanksLoadingImpl<T>;
}

/// @nodoc
abstract class _$$BanksSuccessImplCopyWith<T, $Res> {
  factory _$$BanksSuccessImplCopyWith(_$BanksSuccessImpl<T> value,
          $Res Function(_$BanksSuccessImpl<T>) then) =
      __$$BanksSuccessImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({T data});
}

/// @nodoc
class __$$BanksSuccessImplCopyWithImpl<T, $Res>
    extends _$HomeStateCopyWithImpl<T, $Res, _$BanksSuccessImpl<T>>
    implements _$$BanksSuccessImplCopyWith<T, $Res> {
  __$$BanksSuccessImplCopyWithImpl(
      _$BanksSuccessImpl<T> _value, $Res Function(_$BanksSuccessImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$BanksSuccessImpl<T>(
      freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$BanksSuccessImpl<T> implements BanksSuccess<T> {
  const _$BanksSuccessImpl(this.data);

  @override
  final T data;

  @override
  String toString() {
    return 'HomeState<$T>.banksSuccess(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BanksSuccessImpl<T> &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(data));

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BanksSuccessImplCopyWith<T, _$BanksSuccessImpl<T>> get copyWith =>
      __$$BanksSuccessImplCopyWithImpl<T, _$BanksSuccessImpl<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() banksLoading,
    required TResult Function(T data) banksSuccess,
    required TResult Function(String errorMessage) banksFailure,
  }) {
    return banksSuccess(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? banksLoading,
    TResult? Function(T data)? banksSuccess,
    TResult? Function(String errorMessage)? banksFailure,
  }) {
    return banksSuccess?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? banksLoading,
    TResult Function(T data)? banksSuccess,
    TResult Function(String errorMessage)? banksFailure,
    required TResult orElse(),
  }) {
    if (banksSuccess != null) {
      return banksSuccess(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HomeInitial<T> value) initial,
    required TResult Function(BanksLoading<T> value) banksLoading,
    required TResult Function(BanksSuccess<T> value) banksSuccess,
    required TResult Function(BankseFailure<T> value) banksFailure,
  }) {
    return banksSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HomeInitial<T> value)? initial,
    TResult? Function(BanksLoading<T> value)? banksLoading,
    TResult? Function(BanksSuccess<T> value)? banksSuccess,
    TResult? Function(BankseFailure<T> value)? banksFailure,
  }) {
    return banksSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HomeInitial<T> value)? initial,
    TResult Function(BanksLoading<T> value)? banksLoading,
    TResult Function(BanksSuccess<T> value)? banksSuccess,
    TResult Function(BankseFailure<T> value)? banksFailure,
    required TResult orElse(),
  }) {
    if (banksSuccess != null) {
      return banksSuccess(this);
    }
    return orElse();
  }
}

abstract class BanksSuccess<T> implements HomeState<T> {
  const factory BanksSuccess(final T data) = _$BanksSuccessImpl<T>;

  T get data;

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BanksSuccessImplCopyWith<T, _$BanksSuccessImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$BankseFailureImplCopyWith<T, $Res> {
  factory _$$BankseFailureImplCopyWith(_$BankseFailureImpl<T> value,
          $Res Function(_$BankseFailureImpl<T>) then) =
      __$$BankseFailureImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({String errorMessage});
}

/// @nodoc
class __$$BankseFailureImplCopyWithImpl<T, $Res>
    extends _$HomeStateCopyWithImpl<T, $Res, _$BankseFailureImpl<T>>
    implements _$$BankseFailureImplCopyWith<T, $Res> {
  __$$BankseFailureImplCopyWithImpl(_$BankseFailureImpl<T> _value,
      $Res Function(_$BankseFailureImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorMessage = null,
  }) {
    return _then(_$BankseFailureImpl<T>(
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$BankseFailureImpl<T> implements BankseFailure<T> {
  const _$BankseFailureImpl({required this.errorMessage});

  @override
  final String errorMessage;

  @override
  String toString() {
    return 'HomeState<$T>.banksFailure(errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BankseFailureImpl<T> &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errorMessage);

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BankseFailureImplCopyWith<T, _$BankseFailureImpl<T>> get copyWith =>
      __$$BankseFailureImplCopyWithImpl<T, _$BankseFailureImpl<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() banksLoading,
    required TResult Function(T data) banksSuccess,
    required TResult Function(String errorMessage) banksFailure,
  }) {
    return banksFailure(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? banksLoading,
    TResult? Function(T data)? banksSuccess,
    TResult? Function(String errorMessage)? banksFailure,
  }) {
    return banksFailure?.call(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? banksLoading,
    TResult Function(T data)? banksSuccess,
    TResult Function(String errorMessage)? banksFailure,
    required TResult orElse(),
  }) {
    if (banksFailure != null) {
      return banksFailure(errorMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HomeInitial<T> value) initial,
    required TResult Function(BanksLoading<T> value) banksLoading,
    required TResult Function(BanksSuccess<T> value) banksSuccess,
    required TResult Function(BankseFailure<T> value) banksFailure,
  }) {
    return banksFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HomeInitial<T> value)? initial,
    TResult? Function(BanksLoading<T> value)? banksLoading,
    TResult? Function(BanksSuccess<T> value)? banksSuccess,
    TResult? Function(BankseFailure<T> value)? banksFailure,
  }) {
    return banksFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HomeInitial<T> value)? initial,
    TResult Function(BanksLoading<T> value)? banksLoading,
    TResult Function(BanksSuccess<T> value)? banksSuccess,
    TResult Function(BankseFailure<T> value)? banksFailure,
    required TResult orElse(),
  }) {
    if (banksFailure != null) {
      return banksFailure(this);
    }
    return orElse();
  }
}

abstract class BankseFailure<T> implements HomeState<T> {
  const factory BankseFailure({required final String errorMessage}) =
      _$BankseFailureImpl<T>;

  String get errorMessage;

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BankseFailureImplCopyWith<T, _$BankseFailureImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
