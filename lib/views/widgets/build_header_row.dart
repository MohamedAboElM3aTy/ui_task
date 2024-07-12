import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:ui_task/app/constants/fatto_app_colors.dart';
import 'package:ui_task/app/extensions/context.dart';
import 'package:ui_task/views/widgets/timer_box.dart';
import 'package:ui_task/views/widgets/two_colons.dart';

class BuildHeaderRow extends StatelessWidget {
  const BuildHeaderRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: 16.h,
        bottom: 19.h,
        left: 16.w,
        right: 16.w,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Text(
                'Discount ends in',
                style: context.textTheme.labelLarge!.copyWith(
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w500,
                  color: FattoAppColors.blackColor,
                ),
              ),
              const Gap(10),
              const TimerBox(label: '02'),
              const Gap(6),
              const TwoColons(),
              const Gap(4.38),
              const TimerBox(label: '24'),
              const Gap(6),
              const TwoColons(),
              const Gap(3.37),
              const TimerBox(label: '09'),
            ],
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
