
import 'package:flutter/material.dart';
import 'package:notification_app/core/util/png_asset.dart';
import 'category_card_widget.dart';

class CatogaryList extends StatelessWidget {
  const CatogaryList({
    super.key,
    required this.screenSize,
  });

  final Size screenSize;

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: GridView.count(
        crossAxisCount: 4,
        childAspectRatio: 0.6,
       scrollDirection: Axis.vertical,
        children: [
          CategoryCard(
              screenSize: screenSize,
              icon: AppPngPath.foodCatOne,
              title: 'Food Delivery',
              discount: '10% Off'),
          CategoryCard(
              screenSize: screenSize,
              icon: AppPngPath.medicineCatOne,
              title: 'Medicines',
              discount: '10% Off'),
          CategoryCard(
              screenSize: screenSize,
              icon:  AppPngPath.petsCatOne,
              title: 'Pet Supplies',
              discount: '10% Off'),
          CategoryCard(
              screenSize: screenSize,
              icon:  AppPngPath.giftCatOne,
              title: 'Gifts',
              discount: ''),
          CategoryCard(
              screenSize: screenSize,
              icon:  AppPngPath.chickenCatOne,
              title: 'Meat',
              discount: ''),
          CategoryCard(
              screenSize: screenSize,
              icon:  AppPngPath.makeupCatOne,
              title: 'Cosmetic',
              discount: ''),
          CategoryCard(
              screenSize: screenSize,
              icon:  AppPngPath.pencilCatOne,
              title: 'Stationery',
              discount: ''),
          CategoryCard(
              screenSize: screenSize,
              icon:  AppPngPath.storeCatOne,
              title: 'Stores',
              discount: '10% Off'),
        ],
      ),
    );
  }
}