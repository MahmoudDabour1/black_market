
import 'package:freezed_annotation/freezed_annotation.dart';
part 'profile_state.freezed.dart';
@freezed
class ProfileState<T> with _$ProfileState<T> {
  const factory ProfileState.initial() = ProfileInitial;

  const factory ProfileState.countriesLoading() = CountriesLoading;

  const factory ProfileState.countriesSuccess(T data) =CountriesSuccess<T>;

  const factory ProfileState.countriesFailure(
      {required String errorMessage}) = CountriesFailure<T>;

  const factory ProfileState.aboutAppLoading() = AboutAppLoading;

  const factory ProfileState.aboutAppSuccess(T data) =AboutAppSuccess<T>;

  const factory ProfileState.aboutAppFailure(
      {required String errorMessage}) = AboutAppFailure<T>;


}