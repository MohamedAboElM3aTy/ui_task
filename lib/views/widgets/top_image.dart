import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ui_task/app/constants/fatto_app_images.dart';

class TopImage extends StatelessWidget {
  const TopImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 165.h,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
            FattoAppImages.mainImage,
          ),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
