import 'package:bw_week_one_e_commerce/model/colors.dart';
import 'package:bw_week_one_e_commerce/model/textwidget.dart';
import 'package:flutter/material.dart';

class StoreCard extends StatelessWidget {
  final Size screenSize;

  const StoreCard({super.key, required this.screenSize});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: screenSize.width / 17,
        right: screenSize.width / 17,
        bottom: screenSize.width / 17
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [          
              Container( // image
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(screenSize.width/75),
                  image: const DecorationImage(image: AssetImage('assets/images/nerby stores.png'),fit: BoxFit.cover)
                ),
                height: screenSize.height / 9.3,
                width: screenSize.height / 10.3,
              ),
              SizedBox(width: screenSize.width / 17),      
              Expanded( // center texts
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [                 
                    TextWidget(text: 'Freshly Baker', color: textGreyColor, fontStyle: 'QuickSand', size: screenSize.width / 22, weight: FontWeight.bold),
                    TextWidget(text: 'Sweets, North Indian', color: nearbyStoreTextColor, fontStyle: 'QuickSand', size: screenSize.width / 28, weight: FontWeight.bold),
                    TextWidget(text: 'Site No - 1 | 6.4 kms', color: nearbyStoreTextColor, fontStyle: 'QuickSand', size: screenSize.width / 28, weight: FontWeight.bold),
                    SizedBox(height: screenSize.width / 60),
                    Container(
                      padding: EdgeInsets.symmetric(
                          horizontal: screenSize.width / 60,
                          vertical: screenSize.width / 120),
                      decoration: BoxDecoration(
                        color: Colors.grey.shade200,
                        borderRadius: BorderRadius.circular(screenSize.width/100),
                      ),
                      child: Text(
                        'Top Store',
                        style: TextStyle(
                          fontSize: screenSize.width / 34,
                          color: Colors.grey.shade800,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Column( //Rating and Time
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.star,
                        color: textGreyColor,
                        size: screenSize.width / 28,
                      ),
                      SizedBox(width: screenSize.width / 90),
                      TextWidget(text: '4.1', color: textGreyColor, fontStyle: 'QuickSand', size: screenSize.width / 28, weight: FontWeight.bold),
                    ],
                  ),
                  SizedBox(height: screenSize.width / 120),
                  TextWidget(text: '45 mins', color: exploreButtonColor, fontStyle: 'QuickSand', size: screenSize.width / 28, weight: FontWeight.bold),
                  SizedBox(height: screenSize.width / 25),
                ],
              ),
            ],
          ),         
          Divider(color: Colors.grey.shade300,indent: screenSize.width/3.75,), // Divider
          Padding(
            padding: EdgeInsets.only(left: screenSize.width/3.75),
            child: Row(
              children: [
                Row(
                  children: [                   
                    Image.asset('assets/images/offer%.png',fit: BoxFit.cover,),
                    SizedBox(width: screenSize.width / 90),
                    TextWidget(text: 'Upto 10% OFF', color: textGreyColor, fontStyle: 'QuickSand', size: screenSize.width / 40, weight: FontWeight.bold),                 
                  ],
                ),
                SizedBox(width: screenSize.width / 20),        
                Row(
                  children: [
                    Image.asset('assets/images/grocery (1) 1.png',fit: BoxFit.cover,),
                    SizedBox(width: screenSize.width / 90),
                    TextWidget(text: '3400+ items available', color: textGreyColor, fontStyle: 'QuickSand', size: screenSize.width / 40, weight: FontWeight.bold),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}