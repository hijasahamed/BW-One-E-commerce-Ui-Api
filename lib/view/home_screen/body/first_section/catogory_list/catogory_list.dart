import 'package:bw_week_one_e_commerce/view/home_screen/body/first_section/category_card/category_card.dart';
import 'package:bw_week_one_e_commerce/view/home_screen/body/first_section/catogory_images/catogory_images.dart';
import 'package:flutter/material.dart';

class CatogaryList extends StatelessWidget {
  const CatogaryList({
    super.key,
    required this.screenSize,
  });

  final Size screenSize;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: screenSize.height /3.35,
      width: screenSize.width,
      child: GridView.count(
        crossAxisCount: 4,
        childAspectRatio: .6,
        scrollDirection: Axis.vertical,
        children: [
          CategoryCard(
              screenSize: screenSize,
              icon: foodDeliveryIcon,
              title: 'Food Delivery',
              discount: '10% Off'),
          CategoryCard(
              screenSize: screenSize,
              icon: medicinesIcon,
              title: 'Medicines',
              discount: '10% Off'),
          CategoryCard(
              screenSize: screenSize,
              icon: petSuppliesIcon,
              title: 'Pet Supplies',
              discount: '10% Off'),
          CategoryCard(
              screenSize: screenSize,
              icon: giftsIcon,
              title: 'Gifts',
              discount: ''),
          CategoryCard(
              screenSize: screenSize,
              icon: meatIcon,
              title: 'Meat',
              discount: ''),
          CategoryCard(
              screenSize: screenSize,
              icon: cosmeticIcon,
              title: 'Cosmetic',
              discount: ''),
          CategoryCard(
              screenSize: screenSize,
              icon: stationeryIcon,
              title: 'Stationery',
              discount: ''),
          CategoryCard(
              screenSize: screenSize,
              icon: storesIcon,
              title: 'Stores',
              discount: '10% Off'),
        ],
      ),
    );
  }
}