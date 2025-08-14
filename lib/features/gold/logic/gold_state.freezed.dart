// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'gold_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$GoldState<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() goldLoading,
    required TResult Function(T goldData) goldSuccess,
    required TResult Function(String errorMessage) goldFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? goldLoading,
    TResult? Function(T goldData)? goldSuccess,
    TResult? Function(String errorMessage)? goldFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? goldLoading,
    TResult Function(T goldData)? goldSuccess,
    TResult Function(String errorMessage)? goldFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GoldInitial<T> value) initial,
    required TResult Function(GoldLoading<T> value) goldLoading,
    required TResult Function(GoldSuccess<T> value) goldSuccess,
    required TResult Function(GoldFailure<T> value) goldFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GoldInitial<T> value)? initial,
    TResult? Function(GoldLoading<T> value)? goldLoading,
    TResult? Function(GoldSuccess<T> value)? goldSuccess,
    TResult? Function(GoldFailure<T> value)? goldFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GoldInitial<T> value)? initial,
    TResult Function(GoldLoading<T> value)? goldLoading,
    TResult Function(GoldSuccess<T> value)? goldSuccess,
    TResult Function(GoldFailure<T> value)? goldFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GoldStateCopyWith<T, $Res> {
  factory $GoldStateCopyWith(
          GoldState<T> value, $Res Function(GoldState<T>) then) =
      _$GoldStateCopyWithImpl<T, $Res, GoldState<T>>;
}

/// @nodoc
class _$GoldStateCopyWithImpl<T, $Res, $Val extends GoldState<T>>
    implements $GoldStateCopyWith<T, $Res> {
  _$GoldStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GoldState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$GoldInitialImplCopyWith<T, $Res> {
  factory _$$GoldInitialImplCopyWith(_$GoldInitialImpl<T> value,
          $Res Function(_$GoldInitialImpl<T>) then) =
      __$$GoldInitialImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$GoldInitialImplCopyWithImpl<T, $Res>
    extends _$GoldStateCopyWithImpl<T, $Res, _$GoldInitialImpl<T>>
    implements _$$GoldInitialImplCopyWith<T, $Res> {
  __$$GoldInitialImplCopyWithImpl(
      _$GoldInitialImpl<T> _value, $Res Function(_$GoldInitialImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of GoldState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$GoldInitialImpl<T> implements GoldInitial<T> {
  const _$GoldInitialImpl();

  @override
  String toString() {
    return 'GoldState<$T>.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GoldInitialImpl<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() goldLoading,
    required TResult Function(T goldData) goldSuccess,
    required TResult Function(String errorMessage) goldFailure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? goldLoading,
    TResult? Function(T goldData)? goldSuccess,
    TResult? Function(String errorMessage)? goldFailure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? goldLoading,
    TResult Function(T goldData)? goldSuccess,
    TResult Function(String errorMessage)? goldFailure,
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
    required TResult Function(GoldInitial<T> value) initial,
    required TResult Function(GoldLoading<T> value) goldLoading,
    required TResult Function(GoldSuccess<T> value) goldSuccess,
    required TResult Function(GoldFailure<T> value) goldFailure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GoldInitial<T> value)? initial,
    TResult? Function(GoldLoading<T> value)? goldLoading,
    TResult? Function(GoldSuccess<T> value)? goldSuccess,
    TResult? Function(GoldFailure<T> value)? goldFailure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GoldInitial<T> value)? initial,
    TResult Function(GoldLoading<T> value)? goldLoading,
    TResult Function(GoldSuccess<T> value)? goldSuccess,
    TResult Function(GoldFailure<T> value)? goldFailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class GoldInitial<T> implements GoldState<T> {
  const factory GoldInitial() = _$GoldInitialImpl<T>;
}

/// @nodoc
abstract class _$$GoldLoadingImplCopyWith<T, $Res> {
  factory _$$GoldLoadingImplCopyWith(_$GoldLoadingImpl<T> value,
          $Res Function(_$GoldLoadingImpl<T>) then) =
      __$$GoldLoadingImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$GoldLoadingImplCopyWithImpl<T, $Res>
    extends _$GoldStateCopyWithImpl<T, $Res, _$GoldLoadingImpl<T>>
    implements _$$GoldLoadingImplCopyWith<T, $Res> {
  __$$GoldLoadingImplCopyWithImpl(
      _$GoldLoadingImpl<T> _value, $Res Function(_$GoldLoadingImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of GoldState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$GoldLoadingImpl<T> implements GoldLoading<T> {
  const _$GoldLoadingImpl();

  @override
  String toString() {
    return 'GoldState<$T>.goldLoading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GoldLoadingImpl<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() goldLoading,
    required TResult Function(T goldData) goldSuccess,
    required TResult Function(String errorMessage) goldFailure,
  }) {
    return goldLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? goldLoading,
    TResult? Function(T goldData)? goldSuccess,
    TResult? Function(String errorMessage)? goldFailure,
  }) {
    return goldLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? goldLoading,
    TResult Function(T goldData)? goldSuccess,
    TResult Function(String errorMessage)? goldFailure,
    required TResult orElse(),
  }) {
    if (goldLoading != null) {
      return goldLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GoldInitial<T> value) initial,
    required TResult Function(GoldLoading<T> value) goldLoading,
    required TResult Function(GoldSuccess<T> value) goldSuccess,
    required TResult Function(GoldFailure<T> value) goldFailure,
  }) {
    return goldLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GoldInitial<T> value)? initial,
    TResult? Function(GoldLoading<T> value)? goldLoading,
    TResult? Function(GoldSuccess<T> value)? goldSuccess,
    TResult? Function(GoldFailure<T> value)? goldFailure,
  }) {
    return goldLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GoldInitial<T> value)? initial,
    TResult Function(GoldLoading<T> value)? goldLoading,
    TResult Function(GoldSuccess<T> value)? goldSuccess,
    TResult Function(GoldFailure<T> value)? goldFailure,
    required TResult orElse(),
  }) {
    if (goldLoading != null) {
      return goldLoading(this);
    }
    return orElse();
  }
}

abstract class GoldLoading<T> implements GoldState<T> {
  const factory GoldLoading() = _$GoldLoadingImpl<T>;
}

/// @nodoc
abstract class _$$GoldSuccessImplCopyWith<T, $Res> {
  factory _$$GoldSuccessImplCopyWith(_$GoldSuccessImpl<T> value,
          $Res Function(_$GoldSuccessImpl<T>) then) =
      __$$GoldSuccessImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({T goldData});
}

/// @nodoc
class __$$GoldSuccessImplCopyWithImpl<T, $Res>
    extends _$GoldStateCopyWithImpl<T, $Res, _$GoldSuccessImpl<T>>
    implements _$$GoldSuccessImplCopyWith<T, $Res> {
  __$$GoldSuccessImplCopyWithImpl(
      _$GoldSuccessImpl<T> _value, $Res Function(_$GoldSuccessImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of GoldState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? goldData = freezed,
  }) {
    return _then(_$GoldSuccessImpl<T>(
      freezed == goldData
          ? _value.goldData
          : goldData // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$GoldSuccessImpl<T> implements GoldSuccess<T> {
  const _$GoldSuccessImpl(this.goldData);

  @override
  final T goldData;

  @override
  String toString() {
    return 'GoldState<$T>.goldSuccess(goldData: $goldData)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GoldSuccessImpl<T> &&
            const DeepCollectionEquality().equals(other.goldData, goldData));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(goldData));

  /// Create a copy of GoldState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GoldSuccessImplCopyWith<T, _$GoldSuccessImpl<T>> get copyWith =>
      __$$GoldSuccessImplCopyWithImpl<T, _$GoldSuccessImpl<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() goldLoading,
    required TResult Function(T goldData) goldSuccess,
    required TResult Function(String errorMessage) goldFailure,
  }) {
    return goldSuccess(goldData);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? goldLoading,
    TResult? Function(T goldData)? goldSuccess,
    TResult? Function(String errorMessage)? goldFailure,
  }) {
    return goldSuccess?.call(goldData);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? goldLoading,
    TResult Function(T goldData)? goldSuccess,
    TResult Function(String errorMessage)? goldFailure,
    required TResult orElse(),
  }) {
    if (goldSuccess != null) {
      return goldSuccess(goldData);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GoldInitial<T> value) initial,
    required TResult Function(GoldLoading<T> value) goldLoading,
    required TResult Function(GoldSuccess<T> value) goldSuccess,
    required TResult Function(GoldFailure<T> value) goldFailure,
  }) {
    return goldSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GoldInitial<T> value)? initial,
    TResult? Function(GoldLoading<T> value)? goldLoading,
    TResult? Function(GoldSuccess<T> value)? goldSuccess,
    TResult? Function(GoldFailure<T> value)? goldFailure,
  }) {
    return goldSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GoldInitial<T> value)? initial,
    TResult Function(GoldLoading<T> value)? goldLoading,
    TResult Function(GoldSuccess<T> value)? goldSuccess,
    TResult Function(GoldFailure<T> value)? goldFailure,
    required TResult orElse(),
  }) {
    if (goldSuccess != null) {
      return goldSuccess(this);
    }
    return orElse();
  }
}

abstract class GoldSuccess<T> implements GoldState<T> {
  const factory GoldSuccess(final T goldData) = _$GoldSuccessImpl<T>;

  T get goldData;

  /// Create a copy of GoldState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GoldSuccessImplCopyWith<T, _$GoldSuccessImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GoldFailureImplCopyWith<T, $Res> {
  factory _$$GoldFailureImplCopyWith(_$GoldFailureImpl<T> value,
          $Res Function(_$GoldFailureImpl<T>) then) =
      __$$GoldFailureImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({String errorMessage});
}

/// @nodoc
class __$$GoldFailureImplCopyWithImpl<T, $Res>
    extends _$GoldStateCopyWithImpl<T, $Res, _$GoldFailureImpl<T>>
    implements _$$GoldFailureImplCopyWith<T, $Res> {
  __$$GoldFailureImplCopyWithImpl(
      _$GoldFailureImpl<T> _value, $Res Function(_$GoldFailureImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of GoldState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorMessage = null,
  }) {
    return _then(_$GoldFailureImpl<T>(
      null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GoldFailureImpl<T> implements GoldFailure<T> {
  const _$GoldFailureImpl(this.errorMessage);

  @override
  final String errorMessage;

  @override
  String toString() {
    return 'GoldState<$T>.goldFailure(errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GoldFailureImpl<T> &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errorMessage);

  /// Create a copy of GoldState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GoldFailureImplCopyWith<T, _$GoldFailureImpl<T>> get copyWith =>
      __$$GoldFailureImplCopyWithImpl<T, _$GoldFailureImpl<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() goldLoading,
    required TResult Function(T goldData) goldSuccess,
    required TResult Function(String errorMessage) goldFailure,
  }) {
    return goldFailure(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? goldLoading,
    TResult? Function(T goldData)? goldSuccess,
    TResult? Function(String errorMessage)? goldFailure,
  }) {
    return goldFailure?.call(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? goldLoading,
    TResult Function(T goldData)? goldSuccess,
    TResult Function(String errorMessage)? goldFailure,
    required TResult orElse(),
  }) {
    if (goldFailure != null) {
      return goldFailure(errorMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GoldInitial<T> value) initial,
    required TResult Function(GoldLoading<T> value) goldLoading,
    required TResult Function(GoldSuccess<T> value) goldSuccess,
    required TResult Function(GoldFailure<T> value) goldFailure,
  }) {
    return goldFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GoldInitial<T> value)? initial,
    TResult? Function(GoldLoading<T> value)? goldLoading,
    TResult? Function(GoldSuccess<T> value)? goldSuccess,
    TResult? Function(GoldFailure<T> value)? goldFailure,
  }) {
    return goldFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GoldInitial<T> value)? initial,
    TResult Function(GoldLoading<T> value)? goldLoading,
    TResult Function(GoldSuccess<T> value)? goldSuccess,
    TResult Function(GoldFailure<T> value)? goldFailure,
    required TResult orElse(),
  }) {
    if (goldFailure != null) {
      return goldFailure(this);
    }
    return orElse();
  }
}

abstract class GoldFailure<T> implements GoldState<T> {
  const factory GoldFailure(final String errorMessage) = _$GoldFailureImpl<T>;

  String get errorMessage;

  /// Create a copy of GoldState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GoldFailureImplCopyWith<T, _$GoldFailureImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
