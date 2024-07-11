import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ui_task/views/widgets/girls_gradient_container.dart';
import 'package:ui_task/views/widgets/upcoming_labels.dart';

class PromotionsContainer extends StatelessWidget {
  const PromotionsContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 170.w,
      height: 60.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(3.r),
        color: const Color(0xffa4a4a4),
      ),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          GirlsGradientContainer(),
          UpcomingLabels(),
        ],
      ),
    );
  }
}
