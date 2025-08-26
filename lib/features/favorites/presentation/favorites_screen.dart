import 'package:black_market/core/theming/app_colors.dart';
import 'package:black_market/core/theming/app_string.dart';
import 'package:black_market/core/theming/app_styles.dart';
import 'package:black_market/core/utils/app_constants.dart';
import 'package:black_market/core/widgets/app_custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';

import '../../../core/helpers/shared_pref_helper.dart';
import '../../../core/helpers/shared_pref_keys.dart';
import '../../home/presentation/widgets/banks/banks_container_single_item.dart';
import '../../profile/presentation/widgets/profile_auth_buttons.dart';
import '../data/models/favorite_bank_model.dart';

class FavoritesScreen extends StatefulWidget {
  const FavoritesScreen({super.key});

  @override
  State<FavoritesScreen> createState() => _FavoritesScreenState();
}

class _FavoritesScreenState extends State<FavoritesScreen> {
  bool isLogin = false;
  List<FavoriteBankModel> favoriteBanks = [];

  Future<void> setToken() async {
    final token =
        await SharedPrefHelper.getSecuredString(SharedPrefKeys.userToken);

    setState(() {
      if (token == null || token.isEmpty) {
        isLogin = false;
      } else {
        isLogin = true;
      }
    });
  }

  Future<void> _loadFavorites() async {
    var favBox = await Hive.openBox<FavoriteBankModel>(kFavBox);

    setState(() {
      favoriteBanks = favBox.values.whereType<FavoriteBankModel>().toList();
    });
  }

  @override
  void initState() {
    super.initState();
    setToken();
    _loadFavorites();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: isLogin
          ? AppCustomAppBar(
              title: AppString.fav,
              showBackButton: false,
            )
          : null,
      body: SafeArea(
        child: Column(
          children: [
            if (isLogin) ...[
              Expanded(
                child: favoriteBanks.isEmpty
                    ? Center(
                        child: Text("لا توجد بنوك مفضلة",
                            style: AppStyles.font16whiteMedium))
                    : GridView.builder(
                        padding: const EdgeInsets.all(16),
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          childAspectRatio: 1.01 / 1,
                          crossAxisSpacing: 15,
                          mainAxisSpacing: 20,
                        ),
                        itemCount: favoriteBanks.length,
                        itemBuilder: (context, index) {
                          final favorite = favoriteBanks[index];
                          return BanksContainerSingleItem(
                            bank: favorite.bank,
                            prices: favorite.price,
                            onFavoriteChanged: _loadFavorites,
                          );
                        },
                      ),
              )
            ] else ...[
              Expanded(
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(AppString.thisPage,
                          style: AppStyles.font16whiteMedium),
                      ProfileAuthButtons(signInColor: AppColors.primaryColor),
                    ],
                  ),
                ),
              )
            ],
          ],
        ),
      ),
    );
  }
}
