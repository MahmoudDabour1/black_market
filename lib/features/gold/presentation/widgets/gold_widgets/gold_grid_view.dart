import 'package:black_market/features/gold/data/models/gold_response_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'gold_single_item.dart';

class GoldGridView extends StatelessWidget {
  final List<GoldResponseModel> data;

  const GoldGridView({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 16.h),
      child: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 1.02 / 1,
          crossAxisSpacing: 30.w,
          mainAxisSpacing: 20.h,
        ),
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemCount: data.length,
        itemBuilder: (context, index) {
          return GoldSingleItem(
            data: data[index],
          );
        },
      ),
    );
  }
}
