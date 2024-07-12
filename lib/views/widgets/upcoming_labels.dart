import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ui_task/app/constants/fatto_app_colors.dart';
import 'package:ui_task/app/extensions/context.dart';
import 'package:ui_task/views/widgets/build_label.dart';

class UpcomingLabels extends StatelessWidget {
  const UpcomingLabels({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 58.h,
      width: 90.w,
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Padding(
            padding: EdgeInsets.only(
              top: 10.w,
              bottom: 2.w,
            ),
            child: DecoratedBox(
              decoration: BoxDecoration(
                border: Border.all(
                  color: FattoAppColors.whiteColor,
                  width: 1,
                ),
              ),
              child: SizedBox(
                width: 59.w,
                height: 19.h,
                child: FittedBox(
                  child: Padding(
                    padding: EdgeInsets.symmetric(vertical: 9.h),
                    child: RichText(
                      text: TextSpan(
                        text: 'Extra 37% Off',
                        style: context.textTheme.labelMedium!.copyWith(
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w600,
                          color: FattoAppColors.whiteColor,
                        ),
                        children: [
                          TextSpan(
                            text: '\n+ Cashback 15%',
                            style: context.textTheme.labelMedium!.copyWith(
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w400,
                              color: const Color(0xff292A5A),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              bottom: 2.w,
            ),
            child: const BuildLabel(
              label: '24-26 December',
              borderColor: FattoAppColors.whiteColor,
              hasDecoratedColor: false,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 3.w),
            child: const BuildLabel(
              label: 'Remind Me',
              borderColor: FattoAppColors.mainColor,
              hasDecoratedColor: true,
            ),
          ),
        ],
      ),
    );
  }
}
