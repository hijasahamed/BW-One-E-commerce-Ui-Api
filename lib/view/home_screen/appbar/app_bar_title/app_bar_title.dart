import 'package:bw_week_one_e_commerce/model/colors.dart';
import 'package:bw_week_one_e_commerce/model/textwidget.dart';
import 'package:flutter/material.dart';

class AppBarTitle extends StatelessWidget {
  const AppBarTitle({
    super.key,
    required this.screenSize,
  });

  final Size screenSize;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Icon(
          Icons.place_sharp,
          size: screenSize.width / 12,
          color: buttonGreenColor,
        ),
        TextWidget(
          text: 'ABCD, New Delhi',
          color: textGreyColor,
          size: screenSize.width / 25,
          weight: FontWeight.bold,
          fontStyle: 'QuickSand',
        ),
        PopupMenuButton<String>(
          color: appbackgroundWhite,
          icon: Icon(
            Icons.keyboard_arrow_down,
            size: screenSize.width / 10,
            color: buttonGreenColor,
          ),
          onSelected: (String result) {
            
          },
          itemBuilder: (BuildContext context) => <PopupMenuEntry<String>>[
            const PopupMenuItem<String>(
              value: 'Option 1',
              child: Text('Option 1'),
            ),
            const PopupMenuItem<String>(
              value: 'Option 2',
              child: Text('Option 2'),
            ),
            const PopupMenuItem<String>(
              value: 'Option 3',
              child: Text('Option 3'),
            ),
          ],
        ),
      ],
    );
  }
}
