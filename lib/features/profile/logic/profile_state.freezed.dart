// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'profile_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ProfileState<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() countriesLoading,
    required TResult Function(T data) countriesSuccess,
    required TResult Function(String errorMessage) countriesFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? countriesLoading,
    TResult? Function(T data)? countriesSuccess,
    TResult? Function(String errorMessage)? countriesFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? countriesLoading,
    TResult Function(T data)? countriesSuccess,
    TResult Function(String errorMessage)? countriesFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProfileInitial<T> value) initial,
    required TResult Function(CountriesLoading<T> value) countriesLoading,
    required TResult Function(CountriesSuccess<T> value) countriesSuccess,
    required TResult Function(CountriesFailure<T> value) countriesFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProfileInitial<T> value)? initial,
    TResult? Function(CountriesLoading<T> value)? countriesLoading,
    TResult? Function(CountriesSuccess<T> value)? countriesSuccess,
    TResult? Function(CountriesFailure<T> value)? countriesFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProfileInitial<T> value)? initial,
    TResult Function(CountriesLoading<T> value)? countriesLoading,
    TResult Function(CountriesSuccess<T> value)? countriesSuccess,
    TResult Function(CountriesFailure<T> value)? countriesFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileStateCopyWith<T, $Res> {
  factory $ProfileStateCopyWith(
          ProfileState<T> value, $Res Function(ProfileState<T>) then) =
      _$ProfileStateCopyWithImpl<T, $Res, ProfileState<T>>;
}

/// @nodoc
class _$ProfileStateCopyWithImpl<T, $Res, $Val extends ProfileState<T>>
    implements $ProfileStateCopyWith<T, $Res> {
  _$ProfileStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProfileState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$ProfileInitialImplCopyWith<T, $Res> {
  factory _$$ProfileInitialImplCopyWith(_$ProfileInitialImpl<T> value,
          $Res Function(_$ProfileInitialImpl<T>) then) =
      __$$ProfileInitialImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$ProfileInitialImplCopyWithImpl<T, $Res>
    extends _$ProfileStateCopyWithImpl<T, $Res, _$ProfileInitialImpl<T>>
    implements _$$ProfileInitialImplCopyWith<T, $Res> {
  __$$ProfileInitialImplCopyWithImpl(_$ProfileInitialImpl<T> _value,
      $Res Function(_$ProfileInitialImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of ProfileState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ProfileInitialImpl<T> implements ProfileInitial<T> {
  const _$ProfileInitialImpl();

  @override
  String toString() {
    return 'ProfileState<$T>.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ProfileInitialImpl<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() countriesLoading,
    required TResult Function(T data) countriesSuccess,
    required TResult Function(String errorMessage) countriesFailure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? countriesLoading,
    TResult? Function(T data)? countriesSuccess,
    TResult? Function(String errorMessage)? countriesFailure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? countriesLoading,
    TResult Function(T data)? countriesSuccess,
    TResult Function(String errorMessage)? countriesFailure,
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
    required TResult Function(ProfileInitial<T> value) initial,
    required TResult Function(CountriesLoading<T> value) countriesLoading,
    required TResult Function(CountriesSuccess<T> value) countriesSuccess,
    required TResult Function(CountriesFailure<T> value) countriesFailure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProfileInitial<T> value)? initial,
    TResult? Function(CountriesLoading<T> value)? countriesLoading,
    TResult? Function(CountriesSuccess<T> value)? countriesSuccess,
    TResult? Function(CountriesFailure<T> value)? countriesFailure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProfileInitial<T> value)? initial,
    TResult Function(CountriesLoading<T> value)? countriesLoading,
    TResult Function(CountriesSuccess<T> value)? countriesSuccess,
    TResult Function(CountriesFailure<T> value)? countriesFailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class ProfileInitial<T> implements ProfileState<T> {
  const factory ProfileInitial() = _$ProfileInitialImpl<T>;
}

/// @nodoc
abstract class _$$CountriesLoadingImplCopyWith<T, $Res> {
  factory _$$CountriesLoadingImplCopyWith(_$CountriesLoadingImpl<T> value,
          $Res Function(_$CountriesLoadingImpl<T>) then) =
      __$$CountriesLoadingImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$CountriesLoadingImplCopyWithImpl<T, $Res>
    extends _$ProfileStateCopyWithImpl<T, $Res, _$CountriesLoadingImpl<T>>
    implements _$$CountriesLoadingImplCopyWith<T, $Res> {
  __$$CountriesLoadingImplCopyWithImpl(_$CountriesLoadingImpl<T> _value,
      $Res Function(_$CountriesLoadingImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of ProfileState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$CountriesLoadingImpl<T> implements CountriesLoading<T> {
  const _$CountriesLoadingImpl();

  @override
  String toString() {
    return 'ProfileState<$T>.countriesLoading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CountriesLoadingImpl<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() countriesLoading,
    required TResult Function(T data) countriesSuccess,
    required TResult Function(String errorMessage) countriesFailure,
  }) {
    return countriesLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? countriesLoading,
    TResult? Function(T data)? countriesSuccess,
    TResult? Function(String errorMessage)? countriesFailure,
  }) {
    return countriesLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? countriesLoading,
    TResult Function(T data)? countriesSuccess,
    TResult Function(String errorMessage)? countriesFailure,
    required TResult orElse(),
  }) {
    if (countriesLoading != null) {
      return countriesLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProfileInitial<T> value) initial,
    required TResult Function(CountriesLoading<T> value) countriesLoading,
    required TResult Function(CountriesSuccess<T> value) countriesSuccess,
    required TResult Function(CountriesFailure<T> value) countriesFailure,
  }) {
    return countriesLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProfileInitial<T> value)? initial,
    TResult? Function(CountriesLoading<T> value)? countriesLoading,
    TResult? Function(CountriesSuccess<T> value)? countriesSuccess,
    TResult? Function(CountriesFailure<T> value)? countriesFailure,
  }) {
    return countriesLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProfileInitial<T> value)? initial,
    TResult Function(CountriesLoading<T> value)? countriesLoading,
    TResult Function(CountriesSuccess<T> value)? countriesSuccess,
    TResult Function(CountriesFailure<T> value)? countriesFailure,
    required TResult orElse(),
  }) {
    if (countriesLoading != null) {
      return countriesLoading(this);
    }
    return orElse();
  }
}

abstract class CountriesLoading<T> implements ProfileState<T> {
  const factory CountriesLoading() = _$CountriesLoadingImpl<T>;
}

/// @nodoc
abstract class _$$CountriesSuccessImplCopyWith<T, $Res> {
  factory _$$CountriesSuccessImplCopyWith(_$CountriesSuccessImpl<T> value,
          $Res Function(_$CountriesSuccessImpl<T>) then) =
      __$$CountriesSuccessImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({T data});
}

/// @nodoc
class __$$CountriesSuccessImplCopyWithImpl<T, $Res>
    extends _$ProfileStateCopyWithImpl<T, $Res, _$CountriesSuccessImpl<T>>
    implements _$$CountriesSuccessImplCopyWith<T, $Res> {
  __$$CountriesSuccessImplCopyWithImpl(_$CountriesSuccessImpl<T> _value,
      $Res Function(_$CountriesSuccessImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of ProfileState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$CountriesSuccessImpl<T>(
      freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$CountriesSuccessImpl<T> implements CountriesSuccess<T> {
  const _$CountriesSuccessImpl(this.data);

  @override
  final T data;

  @override
  String toString() {
    return 'ProfileState<$T>.countriesSuccess(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CountriesSuccessImpl<T> &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(data));

  /// Create a copy of ProfileState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CountriesSuccessImplCopyWith<T, _$CountriesSuccessImpl<T>> get copyWith =>
      __$$CountriesSuccessImplCopyWithImpl<T, _$CountriesSuccessImpl<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() countriesLoading,
    required TResult Function(T data) countriesSuccess,
    required TResult Function(String errorMessage) countriesFailure,
  }) {
    return countriesSuccess(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? countriesLoading,
    TResult? Function(T data)? countriesSuccess,
    TResult? Function(String errorMessage)? countriesFailure,
  }) {
    return countriesSuccess?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? countriesLoading,
    TResult Function(T data)? countriesSuccess,
    TResult Function(String errorMessage)? countriesFailure,
    required TResult orElse(),
  }) {
    if (countriesSuccess != null) {
      return countriesSuccess(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProfileInitial<T> value) initial,
    required TResult Function(CountriesLoading<T> value) countriesLoading,
    required TResult Function(CountriesSuccess<T> value) countriesSuccess,
    required TResult Function(CountriesFailure<T> value) countriesFailure,
  }) {
    return countriesSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProfileInitial<T> value)? initial,
    TResult? Function(CountriesLoading<T> value)? countriesLoading,
    TResult? Function(CountriesSuccess<T> value)? countriesSuccess,
    TResult? Function(CountriesFailure<T> value)? countriesFailure,
  }) {
    return countriesSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProfileInitial<T> value)? initial,
    TResult Function(CountriesLoading<T> value)? countriesLoading,
    TResult Function(CountriesSuccess<T> value)? countriesSuccess,
    TResult Function(CountriesFailure<T> value)? countriesFailure,
    required TResult orElse(),
  }) {
    if (countriesSuccess != null) {
      return countriesSuccess(this);
    }
    return orElse();
  }
}

abstract class CountriesSuccess<T> implements ProfileState<T> {
  const factory CountriesSuccess(final T data) = _$CountriesSuccessImpl<T>;

  T get data;

  /// Create a copy of ProfileState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CountriesSuccessImplCopyWith<T, _$CountriesSuccessImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CountriesFailureImplCopyWith<T, $Res> {
  factory _$$CountriesFailureImplCopyWith(_$CountriesFailureImpl<T> value,
          $Res Function(_$CountriesFailureImpl<T>) then) =
      __$$CountriesFailureImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({String errorMessage});
}

/// @nodoc
class __$$CountriesFailureImplCopyWithImpl<T, $Res>
    extends _$ProfileStateCopyWithImpl<T, $Res, _$CountriesFailureImpl<T>>
    implements _$$CountriesFailureImplCopyWith<T, $Res> {
  __$$CountriesFailureImplCopyWithImpl(_$CountriesFailureImpl<T> _value,
      $Res Function(_$CountriesFailureImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of ProfileState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorMessage = null,
  }) {
    return _then(_$CountriesFailureImpl<T>(
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$CountriesFailureImpl<T> implements CountriesFailure<T> {
  const _$CountriesFailureImpl({required this.errorMessage});

  @override
  final String errorMessage;

  @override
  String toString() {
    return 'ProfileState<$T>.countriesFailure(errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CountriesFailureImpl<T> &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errorMessage);

  /// Create a copy of ProfileState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CountriesFailureImplCopyWith<T, _$CountriesFailureImpl<T>> get copyWith =>
      __$$CountriesFailureImplCopyWithImpl<T, _$CountriesFailureImpl<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() countriesLoading,
    required TResult Function(T data) countriesSuccess,
    required TResult Function(String errorMessage) countriesFailure,
  }) {
    return countriesFailure(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? countriesLoading,
    TResult? Function(T data)? countriesSuccess,
    TResult? Function(String errorMessage)? countriesFailure,
  }) {
    return countriesFailure?.call(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? countriesLoading,
    TResult Function(T data)? countriesSuccess,
    TResult Function(String errorMessage)? countriesFailure,
    required TResult orElse(),
  }) {
    if (countriesFailure != null) {
      return countriesFailure(errorMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProfileInitial<T> value) initial,
    required TResult Function(CountriesLoading<T> value) countriesLoading,
    required TResult Function(CountriesSuccess<T> value) countriesSuccess,
    required TResult Function(CountriesFailure<T> value) countriesFailure,
  }) {
    return countriesFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProfileInitial<T> value)? initial,
    TResult? Function(CountriesLoading<T> value)? countriesLoading,
    TResult? Function(CountriesSuccess<T> value)? countriesSuccess,
    TResult? Function(CountriesFailure<T> value)? countriesFailure,
  }) {
    return countriesFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProfileInitial<T> value)? initial,
    TResult Function(CountriesLoading<T> value)? countriesLoading,
    TResult Function(CountriesSuccess<T> value)? countriesSuccess,
    TResult Function(CountriesFailure<T> value)? countriesFailure,
    required TResult orElse(),
  }) {
    if (countriesFailure != null) {
      return countriesFailure(this);
    }
    return orElse();
  }
}

abstract class CountriesFailure<T> implements ProfileState<T> {
  const factory CountriesFailure({required final String errorMessage}) =
      _$CountriesFailureImpl<T>;

  String get errorMessage;

  /// Create a copy of ProfileState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CountriesFailureImplCopyWith<T, _$CountriesFailureImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
