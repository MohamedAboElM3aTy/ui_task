import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:ui_task/app/constants/fatto_app_colors.dart';

class TwoColons extends StatelessWidget {
  const TwoColons({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: 2.63.w,
          height: 2.63.h,
          child: const CircleAvatar(
            backgroundColor: FattoAppColors.mainColor,
          ),
        ),
        const Gap(2),
        SizedBox(
          width: 2.63.w,
          height: 2.63.h,
          child: const CircleAvatar(backgroundColor: FattoAppColors.mainColor),
        ),
      ],
    );
  }
}
