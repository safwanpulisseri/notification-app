import 'package:flutter/material.dart';
import 'package:notification_app/core/util/png_asset.dart';
import 'category_card_widget.dart';

class CategoryList extends StatelessWidget {
  const CategoryList({
    super.key,
    required this.screenSize,
  });

  final Size screenSize;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: screenSize.height * 0.32, 
      child: GridView.builder(
        physics: const NeverScrollableScrollPhysics(), 
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 4,
          childAspectRatio: 0.6,
        ),
        itemCount: 8,
        itemBuilder: (context, index) {
          final categoryItems = [
            {'icon': AppPngPath.foodCatOne, 'title': 'Food Delivery', 'discount': '10% Off'},
            {'icon': AppPngPath.medicineCatOne, 'title': 'Medicines', 'discount': '10% Off'},
            {'icon': AppPngPath.petsCatOne, 'title': 'Pet Supplies', 'discount': '10% Off'},
            {'icon': AppPngPath.giftCatOne, 'title': 'Gifts', 'discount': ''},
            {'icon': AppPngPath.chickenCatOne, 'title': 'Meat', 'discount': ''},
            {'icon': AppPngPath.makeupCatOne, 'title': 'Cosmetic', 'discount': ''},
            {'icon': AppPngPath.pencilCatOne, 'title': 'Stationery', 'discount': ''},
            {'icon': AppPngPath.storeCatOne, 'title': 'Stores', 'discount': '10% Off'},
          ];

          final item = categoryItems[index];
          return CategoryCard(
            screenSize: screenSize,
            icon: item['icon'] as String,
            title: item['title'] as String,
            discount: item['discount'] as String,
          );
        },
      ),
    );
  }
}
