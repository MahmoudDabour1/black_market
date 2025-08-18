import 'package:black_market/core/theming/app_string.dart';
import 'package:black_market/core/theming/app_styles.dart';
import 'package:black_market/core/utils/spacing.dart';
import 'package:black_market/core/widgets/app_custom_app_bar.dart';
import 'package:black_market/features/settings/presentation/widgets/notifications_custom_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NotificationsScreen extends StatefulWidget {
  const NotificationsScreen({super.key});

  @override
  State<NotificationsScreen> createState() => _NotificationsScreenState();
}

class _NotificationsScreenState extends State<NotificationsScreen> {
  bool coins = false;
  bool gold = false;
  bool news = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppCustomAppBar(title: AppString.notificationSettings),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 8.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            verticalSpace(32),
            Text(
              AppString.notification,
              style: AppStyles.font18WhiteSemiBold,
            ),
            verticalSpace(32),
            NotificationsCustomContainer(
              title: AppString.coins,
              initialValue: coins,
              onChange: () {},
            ),
            NotificationsCustomContainer(
              title: AppString.gold,
              initialValue: gold,
              onChange: () {},
            ),
            NotificationsCustomContainer(
              title: AppString.news,
              initialValue: news,
              onChange: () {},
            ),
          ],
        ),
      ),
    );
  }
}
