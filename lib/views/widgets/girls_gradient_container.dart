import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ui_task/app/constants/fatto_app_images.dart';
import 'package:ui_task/views/widgets/overlapping_squares.dart';

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
                  Color.fromARGB(143, 255, 36, 65),
                ],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
          ),
        ),
        Positioned(
          child: CustomPaint(
            painter: OverLappingSquaresPainter(),
            size: Size(72.w, 50.h),
          ),
        ),
        Positioned(
          top: 2.h,
          right: 17.w,
          child: Image.asset(
            FattoAppImages.starOneImage,
            width: 5.w,
          ),
        ),
        Positioned(
          bottom: 6.h,
          right: 10.w,
          child: Image.asset(
            FattoAppImages.starTwoImage,
            width: 5.w,
          ),
        ),
        Positioned(
          top: 22.h,
          left: 21.w,
          child: Image.asset(
            FattoAppImages.starThreeImage,
            width: 5.w,
          ),
        ),
        Positioned(
          bottom: 3.h,
          left: 10.w,
          child: Image.asset(
            FattoAppImages.starFourImage,
            width: 5.w,
          ),
        ),
        Positioned(
          bottom: 0,
          child: Image.asset(
            FattoAppImages.girlImage,
            fit: BoxFit.fill,
            height: 54.h,
            width: 55.w,
          ),
        ),
      ],
    );
  }
}
