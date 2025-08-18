import 'package:black_market/core/routing/router_observer.dart';
import 'package:black_market/features/gold/data/models/companies_response_model.dart';
import 'package:black_market/features/gold/data/models/ingots_and_coins_response_model.dart';
import 'package:black_market/features/gold/data/repos/gold_repos.dart';
import 'package:bloc/bloc.dart';

import 'gold_state.dart';

class GoldCubit extends Cubit<GoldState> {
  final GoldRepos goldRepos;

  GoldCubit(this.goldRepos) : super(GoldState.initial());

  List<CompaniesResponseModel> companies = [];
  List<Coin> ingots = [];
  List<Coin> coins = [];
  CompaniesResponseModel? selectedCompany;

  Future<void> fetchGoldPrices() async {
    emit(GoldState.goldLoading());
    final response = await goldRepos.getGoldPrice();
    response.when(
      success: (data) {
        emit(GoldState.goldSuccess(data));
      },
      failure: (error) {
        logger.w(error.toString());
        emit(GoldState.goldFailure(error.toString()));
      },
    );
  }

  Future<void> fetchCompaniesData() async {
    emit(GoldState.companiesLoading());
    final response = await goldRepos.getCompanies();

    response.when(
      success: (data) {
        companies = data;
        emit(GoldState.companiesSuccess(data));
      },
      failure: (error) {
        logger.w(error.toString());
        emit(GoldState.companiesFailure(error.toString()));
      },
    );
  }

  Future<void> fetchIngotsAndCoins() async {
    emit(GoldState.ingotsAndCoinsLoading());
    final response = await goldRepos.getIngotsAndCoins();
    response.when(
      success: (data) {
        ingots = data.ingots ?? [];
        coins = data.coins ?? [];
        emit(GoldState.ingotsAndCoinsSuccess(ingots: ingots,coins: coins));
      },
      failure: (error) {
        logger.w(error.toString());
        emit(GoldState.ingotsAndCoinsFailure(error.toString()));
      },
    );
  }

  void selectCompany(CompaniesResponseModel company) {
    selectedCompany = company;
    final filteredIngots = ingots
        .map((ingot) {
          return ingot.copyWith(
            companiesData: ingot.companiesData
                ?.where((cd) => cd.companyId == company.id)
                .toList(),
          );
        })
        .where((ingot) => ingot.companiesData?.isNotEmpty ?? false)
        .toList();
    final filteredCoins = coins
        .map((coin) {
          return coin.copyWith(
            companiesData: coin.companiesData
                ?.where((cd) => cd.companyId == company.id)
                .toList(),
          );
        })
        .where((coin) => coin.companiesData?.isNotEmpty ?? false)
        .toList();

    emit(GoldState.ingotsAndCoinsSuccess(
      ingots: filteredIngots,
      coins: filteredCoins,
    ));
  }
}

extension CoinCopyWith on Coin {
  Coin copyWith({
    int? id,
    int? baseGoldItem,
    String? icon,
    String? name,
    String? karat,
    dynamic weight,
    int? sort,
    DateTime? createdAt,
    DateTime? updatedAt,
    List<CompaniesDatum>? companiesData,
    Price? price,
  }) {
    return Coin(
      id: id ?? this.id,
      baseGoldItem: baseGoldItem ?? this.baseGoldItem,
      icon: icon ?? this.icon,
      name: name ?? this.name,
      karat: karat ?? this.karat,
      weight: weight ?? this.weight,
      sort: sort ?? this.sort,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
      companiesData: companiesData ?? this.companiesData,
      price: price ?? this.price,
    );
  }
}
