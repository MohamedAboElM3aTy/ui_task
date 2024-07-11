import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ui_task/app/constants/fatto_app_images.dart';

class LipStickStack extends StatelessWidget {
  const LipStickStack({super.key});

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
              color: Color(0xff913B10),
            ),
          ),
        ),
        Positioned(
          top: 1.h,
          right: 2.w,
          child: Image.asset(
            FattoAppImages.handTwoImage,
            width: 10.w,
            height: 10.h,
          ),
        ),
        Positioned(
          bottom: 1.h,
          right: 1.w,
          child: Image.asset(
            FattoAppImages.handOneImage,
            width: 8.w,
            height: 8.h,
          ),
        ),
        Positioned(
          top: 1.h,
          left: 2.w,
          child: Image.asset(
            FattoAppImages.handFourImage,
            width: 8.w,
            height: 8.h,
          ),
        ),
        Positioned(
          bottom: 1.h,
          left: 1.w,
          child: Image.asset(
            FattoAppImages.handThreeImage,
            width: 8.w,
            height: 8.h,
          ),
        ),
        Positioned(
          bottom: 0,
          child: Image.asset(
            FattoAppImages.lipStickImage,
            fit: BoxFit.fill,
            height: 50.h,
          ),
        ),
      ],
    );
  }
}
