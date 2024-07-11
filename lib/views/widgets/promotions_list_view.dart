import 'package:flutter/material.dart';
import 'package:ui_task/views/widgets/lip_stick_container.dart';
import 'package:ui_task/views/widgets/promotions_container.dart';

class PromotionsListView extends StatelessWidget {
  const PromotionsListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: List.generate(
          growable: false,
          6,
          (index) => Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 16,
            ).copyWith(right: 4),
            child: index.isEven
                ? const PromotionsContainer()
                : const LipStickContainer(),
          ),
        ),
      ),
    );
  }
}
