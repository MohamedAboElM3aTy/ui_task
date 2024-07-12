import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ui_task/app/constants/fatto_app_colors.dart';
import 'package:ui_task/app/extensions/context.dart';

class TitleWithSeeAll extends StatelessWidget {
  const TitleWithSeeAll({
    required this.label,
    super.key,
  });

  final String label;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 13.w,
        right: 9.w,
        top: 24.h,
        bottom: 19.h,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            label,
            style: context.textTheme.labelLarge!.copyWith(
              fontSize: 12.sp,
              fontWeight: FontWeight.w500,
              color: FattoAppColors.blackColor,
            ),
          ),
          Text(
            'See all',
            style: context.textTheme.labelMedium!.copyWith(
              fontSize: 12.sp,
              fontWeight: FontWeight.w500,
              color: FattoAppColors.mainColor,
            ),
          ),
        ],
      ),
    );
  }
}
