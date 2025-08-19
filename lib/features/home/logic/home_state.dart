
import 'package:freezed_annotation/freezed_annotation.dart';
part 'home_state.freezed.dart';
@freezed
 class HomeState<T> with _$HomeState<T> {
  const factory HomeState.initial() = HomeInitial;

  const factory HomeState.banksLoading() = BanksLoading;

  const factory HomeState.banksSuccess(T data) =BanksSuccess<T>;

  const factory HomeState.banksFailure(
      {required String errorMessage}) = BankseFailure<T>;

  const factory HomeState.currenciesLoading() = CurrenciesLoading;

  const factory HomeState.currenciesSuccess(T data) =CurrenciesSuccess<T>;

  const factory HomeState.currenciesFailure(
      {required String errorMessage}) = CurrenciesFailure<T>;
}

