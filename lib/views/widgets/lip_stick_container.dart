import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ui_task/views/widgets/lip_stick_stack.dart';
import 'package:ui_task/views/widgets/promotions_label.dart';

class LipStickContainer extends StatelessWidget {
  const LipStickContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 162.w,
      height: 58.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(3.r),
        color: const Color(0xffA8F9EA),
      ),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          LipStickStack(),
          PromotionsLabel(),
        ],
      ),
    );
  }
}
