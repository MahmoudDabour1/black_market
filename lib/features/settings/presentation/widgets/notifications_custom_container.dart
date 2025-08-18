import 'package:black_market/core/widgets/app_custom_container_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/theming/app_colors.dart';
import '../../../../core/theming/app_styles.dart';

class NotificationsCustomContainer extends StatefulWidget {
  final String title;
  final bool initialValue;
  final Function onChange;

  const NotificationsCustomContainer({
    super.key,
    required this.title,
    required this.initialValue,
    required this.onChange,
  });

  @override
  State<NotificationsCustomContainer> createState() =>
      _NotificationsCustomContainerState();
}

class _NotificationsCustomContainerState
    extends State<NotificationsCustomContainer> {
  late bool changeValue;

  @override
  void initState() {
    super.initState();
    changeValue = widget.initialValue;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 8.h),
      child: AppCustomContainerWidget(
        widget: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                widget.title,
                style: AppStyles.font18WhiteSemiBold,
              ),
              Switch.adaptive(
                value: changeValue,
                onChanged: (value) {
                  changeValue = !changeValue;
                  setState(() {
                    changeValue = value;
                  });
                  widget.onChange;
                },
                activeColor: AppColors.whiteColor,
                activeTrackColor: Colors.green,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
