import 'package:freezed_annotation/freezed_annotation.dart';
part 'gold_state.freezed.dart';

@freezed
class GoldState<T> with _$GoldState<T> {
  const factory GoldState.initial() = GoldInitial;

  const factory GoldState.goldLoading() = GoldLoading;

  const factory GoldState.goldSuccess(T goldData) = GoldSuccess;

  const factory GoldState.goldFailure(String errorMessage) = GoldFailure;

  const factory GoldState.companiesLoading() = CompaniesLoading;

  const factory GoldState.companiesSuccess(T companiesData) = CompaniesSuccess;

  const factory GoldState.companiesFailure(String errorMessage) = CompaniesFailure;
}
