import 'package:bw_week_one_e_commerce/model/colors.dart';
import 'package:bw_week_one_e_commerce/model/textwidget.dart';
import 'package:flutter/material.dart';

class FirstSection extends StatelessWidget {
  const FirstSection({super.key, required this.screenSize});
  final Size screenSize;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextWidget(
            text: 'What would you like to do today?',
            color: textGreyColor,
            fontStyle: 'QuickSand',
            size: screenSize.width / 19,
            weight: FontWeight.bold
        ),
        SizedBox(
          height: screenSize.height/3,
          width: screenSize.width,
          child: GridView.count(
            crossAxisCount: 4,
            childAspectRatio: .6,
            children: [
              CategoryCard(screenSize: screenSize, icon: foodDeliveryIcon, title: 'Food Delivery', discount: '10% Off'),
              CategoryCard(screenSize: screenSize, icon: medicinesIcon, title: 'Medicines', discount: '10% Off'),
              CategoryCard(screenSize: screenSize, icon: petSuppliesIcon, title: 'Pet Supplies', discount: '10% Off'),
              CategoryCard(screenSize: screenSize, icon: giftsIcon, title: 'Gifts', discount: ''),
              CategoryCard(screenSize: screenSize, icon: meatIcon, title: 'Meat', discount: ''),
              CategoryCard(screenSize: screenSize, icon: cosmeticIcon, title: 'Cosmetic', discount: ''),
              CategoryCard(screenSize: screenSize, icon: stationeryIcon, title: 'Stationery', discount: ''),
              CategoryCard(screenSize: screenSize, icon: storesIcon, title: 'Stores', discount: '10% Off'),
            ],
          ),
        ),
      ],
    );
  }


}

class CategoryCard extends StatelessWidget {
  const CategoryCard({
    super.key,
    required this.screenSize,
    required this.icon,
    required this.title,
    required this.discount,
  });

  final Size screenSize;
  final String icon;
  final String title;
  final String discount;

  @override
  Widget build(BuildContext context) {
  return Column(
    children: [
      Card(
        color: appbackgroundWhite,
        elevation: 3,
        child: SizedBox(
          height: screenSize.width / 5.5,
          width: screenSize.width / 5.5,
          child: Stack(
            children: [
              Center(child: Image.asset(icon, height: 50)),
              if (discount.isNotEmpty)
                Positioned(
                  top: screenSize.width/150,
                  right: screenSize.width/150,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(screenSize.width/80),
                      color: offerContainerColor
                    ),
                    child: Padding(
                      padding: EdgeInsets.only(left: screenSize.width/50,right: screenSize.width/50,top: screenSize.width/210,bottom: screenSize.width/210),
                      child: TextWidget(text: discount, color: appbackgroundWhite, fontStyle: 'QuickSand', size: screenSize.width/45, weight: FontWeight.bold),
                    ),
                  )
                ),
            ],
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(top: 8.0),
        child: TextWidget(text: title, color: textGreyColor, fontStyle: 'QuickSand', size: screenSize.width/25, weight: FontWeight.bold,maxline: true,alignTextCenter: true,)
      ),
    ],
  );
}
}

const String foodDeliveryIcon = 'assets/images/food delivery.png';
const String medicinesIcon = 'assets/images/medicine 1.png';
const String petSuppliesIcon = 'assets/images/pet supplies.png';
const String giftsIcon = 'assets/images/gifts.png';
const String meatIcon = 'assets/images/meat.png';
const String cosmeticIcon = 'assets/images/Make Up.png';
const String stationeryIcon = 'assets/images/stationery.png';
const String storesIcon = 'assets/images/stores.png';
