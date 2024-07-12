import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:ui_task/app/constants/fatto_app_colors.dart';
import 'package:ui_task/app/extensions/context.dart';
import 'package:ui_task/app/model/product_model.dart';

class MainContainer extends StatelessWidget {
  const MainContainer({
    required this.product,
    this.hasDiscount = false,
    super.key,
  });

  final bool? hasDiscount;

  final ProductModel product;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 121.w,
      height: 150.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(3.r),
        color: FattoAppColors.whiteColor,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AspectRatio(
            aspectRatio: 121.w / 92.h,
            child: ClipRRect(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(3.r),
                topRight: Radius.circular(3.r),
              ),
              child: Image.asset(
                product.imagePath,
                fit: BoxFit.cover,
              ),
            ),
          ),
          const Gap(8),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 5.w).copyWith(right: 7.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  product.name,
                  style: context.textTheme.labelLarge!.copyWith(
                    fontSize: 9.sp,
                    fontWeight: FontWeight.w400,
                    color: const Color(0xff161616),
                  ),
                ),
                Icon(
                  Icons.favorite_outline,
                  size: 15.w,
                  color: FattoAppColors.mainColor,
                ),
              ],
            ),
          ),
          const Gap(8),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 7.w),
            child: Column(
              children: [
                Text(
                  product.price.toString(),
                  style: context.textTheme.labelLarge!.copyWith(
                    fontSize: 9.sp,
                    fontWeight: FontWeight.w400,
                    color: FattoAppColors.mainColor,
                  ),
                ),
                hasDiscount == true
                    ? Text(
                        product.discountedPrice.toString(),
                        style: context.textTheme.labelSmall!.copyWith(
                          fontSize: 6.sp,
                          fontWeight: FontWeight.w400,
                          color: const Color(0xff777777),
                          decoration: TextDecoration.lineThrough,
                        ),
                      )
                    : const SizedBox.shrink(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
