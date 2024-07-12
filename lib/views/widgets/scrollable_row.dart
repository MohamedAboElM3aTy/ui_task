import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ui_task/app/model/product_model.dart';
import 'package:ui_task/views/widgets/main_container.dart';

class ScrollableRow extends StatelessWidget {
  const ScrollableRow({
    required this.productList,
    this.hasDiscount,
    super.key,
  });

  final bool? hasDiscount;
  final List<ProductModel> productList;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: productList
            .map(
              (product) => Padding(
                padding: EdgeInsets.only(
                  left: 9.w,
                ).copyWith(right: 13),
                child: MainContainer(
                  product: product,
                  hasDiscount: hasDiscount ?? false,
                ),
              ),
            )
            .toList(),
      ),
    );
  }
}
