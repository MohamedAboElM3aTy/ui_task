import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ui_task/app/constants/fatto_app_images.dart';

class GirlsGradientContainer extends StatelessWidget {
  const GirlsGradientContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(3.r),
            bottomLeft: Radius.circular(3.r),
          ),
          child: Container(
            width: 72.w,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color(0xff292A5A),
                  Color(0xffff2441),
                ],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
          ),
        ),
        Positioned(
          top: 6.h,
          right: 15.w,
          child: Image.asset(
            FattoAppImages.starOneImage,
            width: 10.w,
            height: 10.h,
          ),
        ),
        Positioned(
          bottom: 8.h,
          right: 13.w,
          child: Image.asset(
            FattoAppImages.starTwoImage,
            width: 8.w,
            height: 8.h,
          ),
        ),
        Positioned(
          top: 22.h,
          left: 15.w,
          child: Image.asset(
            FattoAppImages.starThreeImage,
            width: 8.w,
            height: 8.h,
          ),
        ),
        Positioned(
          bottom: 5.h,
          left: 15.w,
          child: Image.asset(
            FattoAppImages.starFourImage,
            width: 8.w,
            height: 8.h,
          ),
        ),
        Positioned(
          bottom: 0,
          child: Image.asset(
            FattoAppImages.girlImage,
            fit: BoxFit.fill,
            height: 50.h,
          ),
        ),
      ],
    );
  }
}
