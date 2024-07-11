import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ui_task/app/constants/fatto_app_colors.dart';
import 'package:ui_task/app/extensions/context.dart';
import 'package:ui_task/views/widgets/build_label.dart';

class PromotionsLabel extends StatelessWidget {
  const PromotionsLabel({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 4.w),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Promo up to 15% for Mybeline\nMAGNUM',
            style: context.textTheme.labelMedium!.copyWith(
              fontSize: 5.sp,
              fontWeight: FontWeight.w500,
              color: const Color(0xff393939),
            ),
          ),
          Text(
            'Enjoy special promos for you from selected brands',
            style: context.textTheme.labelMedium!.copyWith(
              fontSize: 3.sp,
              fontWeight: FontWeight.w400,
              color: const Color(0xff777777),
            ),
          ),
          Text(
            '25-26 December',
            style: context.textTheme.labelMedium!.copyWith(
              fontSize: 4.sp,
              fontWeight: FontWeight.w400,
              color: FattoAppColors.blackColor,
            ),
          ),
          const BuildLabel(
            label: 'Remind Me',
            borderColor: FattoAppColors.mainColor,
            hasDecoratedColor: true,
          ),
        ],
      ),
    );
  }
}
