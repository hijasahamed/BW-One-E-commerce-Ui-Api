import 'package:bw_week_one_e_commerce/model/colors.dart';
import 'package:bw_week_one_e_commerce/view/notifications_screen/notifications_screen.dart';
import 'package:flutter/material.dart';

class AppBarBottom extends StatelessWidget {
  const AppBarBottom({
    super.key,
    required this.screenSize,
  });

  final Size screenSize;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: screenSize.width/17),
      child: Row(
        children: [
          Container(
            decoration: BoxDecoration(
            color: searchContainerColor,
            borderRadius: BorderRadius.circular(screenSize.width/70)
            ),
            width: screenSize.width/1.6,
            height: screenSize.height/15,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SizedBox(
                  width: screenSize.width / 1.95,
                  height: screenSize.height / 15,
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Search for products/stores',
                      hintStyle: TextStyle(
                        fontFamily: 'QuickSand',
                        color: searchContainerTextColor,
                        fontSize: screenSize.width / 30,
                        fontWeight: FontWeight.bold,
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: BorderSide.none,
                      ),
                      filled: true,
                      fillColor: Colors.grey[200],
                    ),
                  ),
                ),
                Container(
                  height: screenSize.height/15,
                  width: screenSize.height/20,
                  decoration: const BoxDecoration(
                    image: DecorationImage(image: AssetImage('assets/images/Vector.png'))
                  ),
                )
              ],
            ),
          ),
          GestureDetector(
            onTap: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => NotificationsScreen(screenSize: screenSize,),)),
            child: Container(
              height: screenSize.height/15,
              width: screenSize.height/15,
              decoration: const BoxDecoration(
                image: DecorationImage(image: AssetImage('assets/images/Group 526.png'))
              ),
            ),
          ),
          Container(
            height: screenSize.height/15,
            width: screenSize.height/15,
            decoration: const BoxDecoration(
              image: DecorationImage(image: AssetImage('assets/images/Group (1).png'))
            ),
          )
        ],
      ),
    );
  }
}