import 'package:flutter/material.dart';

import '../theming/app_colors.dart';
import 'app_custom_back_button.dart';

class AppCustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;

  const AppCustomAppBar({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: AppCustomBackButton(),
      title: Text(title),
      centerTitle: true,
      backgroundColor: AppColors.blackColor,
      elevation: 0,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
