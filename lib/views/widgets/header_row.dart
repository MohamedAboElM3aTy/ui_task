import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ui_task/app/constants/fatto_app_colors.dart';
import 'package:ui_task/app/extensions/context.dart';

class HeaderRow extends StatelessWidget {
  const HeaderRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Padding(
          padding: const EdgeInsets.all(16),
          child: Container(
            width: 284.w,
            decoration: BoxDecoration(
              color: FattoAppColors.whiteColor,
              borderRadius: BorderRadius.circular(2.r),
            ),
            child: TextField(
              decoration: InputDecoration(
                prefixIcon: Icon(
                  Icons.search,
                  size: 16.w,
                  color: const Color(0xffc0c0c0),
                ),
                hintText: 'Search what you need',
                hintStyle: context.textTheme.labelMedium!.copyWith(
                  fontSize: 11.sp,
                  fontWeight: FontWeight.w400,
                  color: const Color(0xffc0c0c0),
                ),
                border: InputBorder.none,
                contentPadding: const EdgeInsets.symmetric(vertical: 10),
              ),
            ),
          ),
        ),
        const Icon(
          Icons.camera_alt_rounded,
          color: Color(0xffC67E54),
          size: 25,
        ),
      ],
    );
  }
}
