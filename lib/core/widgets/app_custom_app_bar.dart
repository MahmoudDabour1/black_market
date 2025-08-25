import 'package:flutter/material.dart';

import '../theming/app_colors.dart';
import 'app_custom_back_button.dart';

class AppCustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final bool showBackButton;
  final List<Widget>? actions;
  final PreferredSizeWidget? bottom;

  const AppCustomAppBar({
    super.key,
    required this.title,
    this.showBackButton = true,
    this.actions,
    this.bottom,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: showBackButton ? AppCustomBackButton() : SizedBox.shrink(),
      actions: actions,
      title: Text(title),
      centerTitle: true,
      backgroundColor: AppColors.blackColor,
      elevation: 0,
      bottom: bottom,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
