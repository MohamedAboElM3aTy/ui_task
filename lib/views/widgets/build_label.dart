import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ui_task/app/constants/fatto_app_colors.dart';
import 'package:ui_task/app/extensions/context.dart';

class BuildLabel extends StatelessWidget {
  const BuildLabel({
    super.key,
    required this.label,
    required this.borderColor,
    this.hasDecoratedColor,
  });

  final String label;
  final Color borderColor;
  final bool? hasDecoratedColor;

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        border: Border.all(
          color: borderColor,
          width: 1,
        ),
        color: (hasDecoratedColor == true) ? FattoAppColors.mainColor : null,
      ),
      child: SizedBox(
        width: 59.w,
        height: 10.h,
        child: FittedBox(
          child: Padding(
            padding: EdgeInsets.only(
              top: 1.h,
              bottom: 1.h,
              left: 10.h,
              right: 6.w,
            ),
            child: Text(
              label,
              style: context.textTheme.labelMedium!.copyWith(
                fontSize: 12.sp,
                fontWeight: FontWeight.w600,
                color: FattoAppColors.whiteColor,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
