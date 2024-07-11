import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ui_task/app/constants/fatto_app_colors.dart';
import 'package:ui_task/app/extensions/context.dart';

class TimerBox extends StatelessWidget {
  const TimerBox({
    required this.label,
    super.key,
  });

  final String label;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 19.h,
      width: 19.w,
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: FattoAppColors.mainColor,
          borderRadius: BorderRadius.circular(3.r),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 3),
          child: Text(
            label,
            textAlign: TextAlign.center,
            style: context.textTheme.labelSmall!.copyWith(
              fontSize: 9.sp,
              fontWeight: FontWeight.w600,
              color: FattoAppColors.whiteColor,
            ),
          ),
        ),
      ),
    );
  }
}
