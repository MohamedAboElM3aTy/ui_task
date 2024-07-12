import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ui_task/app/constants/fatto_app_colors.dart';
import 'package:ui_task/app/extensions/context.dart';
import 'package:ui_task/views/widgets/build_label.dart';

class PromotionsLabel extends StatelessWidget {
  const PromotionsLabel({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(
                top: 5.h,
                left: 9.w,
                right: 6.w,
              ),
              child: Text(
                'Promo up to 15% for Mybeline\nMAGNUM',
                style: context.textTheme.labelSmall!.copyWith(
                  fontSize: 4.sp,
                  fontWeight: FontWeight.w500,
                  color: const Color(0xff393939),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                bottom: 1.h,
                left: 9.w,
                right: 4.w,
              ),
              child: Text(
                'Enjoy special promos for you from selected brands',
                style: context.textTheme.labelSmall!.copyWith(
                  fontSize: 2.sp,
                  fontWeight: FontWeight.w400,
                  color: const Color(0xff777777),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                bottom: 1.h,
                left: 9.w,
                right: 4.w,
              ),
              child: Text(
                '25-26 December',
                style: context.textTheme.labelSmall!.copyWith(
                  fontSize: 4.sp,
                  fontWeight: FontWeight.w400,
                  color: FattoAppColors.blackColor,
                ),
              ),
            ),
          ],
        ),
        const Column(
          children: [
            BuildLabel(
              label: 'Remind Me',
              borderColor: FattoAppColors.mainColor,
              hasDecoratedColor: true,
            ),
          ],
        ),
      ],
    );
  }
}
