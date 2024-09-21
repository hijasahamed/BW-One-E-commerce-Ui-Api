import 'package:bw_week_one_e_commerce/view/home_screen/body/nearby_stores/nearby_store_card/nearby_store_card.dart';
import 'package:bw_week_one_e_commerce/view/home_screen/body/nearby_stores/nearby_stores_title/nearby_stores_title.dart';
import 'package:bw_week_one_e_commerce/view/home_screen/body/nearby_stores/view_all_stores_button/view_all_stores_button.dart';
import 'package:flutter/material.dart';

class NearbyStores extends StatelessWidget {
  const NearbyStores({super.key,required this.screenSize});
  final Size screenSize;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        NearbyStoresTitle(screenSize: screenSize),
        StoreCard(screenSize: screenSize),
        StoreCard(screenSize: screenSize),
        ViewAllStoresButton(screenSize: screenSize)
      ],
    );
  }
}


