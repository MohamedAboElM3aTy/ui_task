import 'package:flutter/material.dart';
import 'package:ui_task/app/data/dummy_products.dart';
import 'package:ui_task/views/widgets/build_header_row.dart';
import 'package:ui_task/views/widgets/header_row.dart';
import 'package:ui_task/views/widgets/promotions_list_view.dart';
import 'package:ui_task/views/widgets/scrollable_row.dart';
import 'package:ui_task/views/widgets/title_with_see_all.dart';
import 'package:ui_task/views/widgets/top_image.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              HeaderRow(),
              TopImage(),
              BuildHeaderRow(),
              ScrollableRow(
                productList: productsList,
                hasDiscount: true,
              ),
              TitleWithSeeAll(label: 'Upcoming Promotions'),
              PromotionsListView(),
              TitleWithSeeAll(label: 'New in Bags & watches'),
              ScrollableRow(productList: bagsAndWatchesList),
              TitleWithSeeAll(label: 'New in Crochet Clothes'),
              ScrollableRow(productList: crochetClothesList),
              TitleWithSeeAll(label: 'New in Antiqes & Ceramic'),
              ScrollableRow(productList: antiqueList),
              TitleWithSeeAll(label: 'New in Wedding &  Social events'),
              ScrollableRow(productList: weedingList),
              TitleWithSeeAll(label: 'Software Services'),
              ScrollableRow(productList: softwareList),
            ],
          ),
        ),
      ),
    );
  }
}
