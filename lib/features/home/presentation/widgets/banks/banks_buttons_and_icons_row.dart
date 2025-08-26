import 'package:black_market/core/utils/app_constants.dart';
import 'package:black_market/features/home/data/models/banks_response_model.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hive/hive.dart';

import '../../../../../core/networking/api_constants.dart';
import '../../../../../core/theming/app_assets.dart';
import '../../../../../core/theming/app_colors.dart';
import '../../../../favorites/data/models/favorite_bank_model.dart';
import '../../../data/models/currencies_response_model.dart';
import 'banks_button_container_widget.dart';

class BanksButtonsAndIconsRow extends StatefulWidget {
  final BanksResponseModel bank;
  final CurrenciesPrice price;
  final VoidCallback? onFavoriteChanged;

  const BanksButtonsAndIconsRow(
      {super.key,
      required this.bank,
      required this.price,
      this.onFavoriteChanged});

  @override
  State<BanksButtonsAndIconsRow> createState() =>
      _BanksButtonsAndIconsRowState();
}

class _BanksButtonsAndIconsRowState extends State<BanksButtonsAndIconsRow> {
  // bool isFavorite = false;
  //
  // @override
  // void initState() {
  //   super.initState();
  //   _checkIfFavorite();
  // }
  //
  // Future<void> _checkIfFavorite() async {
  //   var favBox = await Hive.openBox<BanksResponseModel>(kFavBox);
  //   setState(() {
  //     isFavorite = favBox.containsKey(widget.bank.id);
  //   });
  // }
  //
  // Future<void> _toggleFavorite() async {
  //   var favBox = await Hive.openBox<FavoriteBankModel>(kFavBox);
  //     if (isFavorite) {
  //       await favBox.delete(widget.bank.id);
  //     } else {
  //       final favoriteBank = FavoriteBankModel(
  //         bank: widget.bank,
  //         price: widget.price,
  //       );
  //       await favBox.put(widget.bank.id, favoriteBank);
  //     }
  //
  //     setState(() {
  //       isFavorite = !isFavorite;
  //     });
  // }

  late Box<FavoriteBankModel> favBox;
  bool isFavorite = false;

  @override
  void initState() {
    super.initState();
    _initHive();
  }

  Future<void> _initHive() async {
    favBox = await Hive.openBox<FavoriteBankModel>(kFavBox);
    _checkIfFavorite();
  }

  void _checkIfFavorite() {
    setState(() {
      isFavorite = favBox.containsKey(widget.bank.id);
    });
  }

  Future<void> _toggleFavorite() async {
    if (isFavorite) {
      await favBox.delete(widget.bank.id);
    } else {
      final favoriteBank = FavoriteBankModel(
        bank: widget.bank,
        price: widget.price,
      );
      await favBox.put(widget.bank.id, favoriteBank);
    }
    setState(() {
      isFavorite = !isFavorite;
    });
    widget.onFavoriteChanged?.call();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        BanksButtonContainerWidget(
          icon: AppAssets.shareIcon,
          onPressed: () {},
        ),
        Container(
          decoration: BoxDecoration(
            color: AppColors.lightGreyColor,
            shape: BoxShape.circle,
          ),
          child: CachedNetworkImage(
            height: 60.h,
            width: 60.w,
            imageUrl: "${ApiConstants.imagesBaseUrl}${widget.bank.icon}",
            placeholder: (context, url) =>
                const Center(child: CircularProgressIndicator()),
            errorWidget: (context, url, error) => const Icon(Icons.error),
          ),
        ),
        BanksButtonContainerWidget(
          icon: isFavorite ? AppAssets.yellowHeartIcon : AppAssets.heartIcon,
          onPressed: _toggleFavorite,
        ),
      ],
    );
  }
}
