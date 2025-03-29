import 'package:flutter/material.dart';
import 'package:islami_app/core/colors_maneger/colors_manegar.dart';

class DisplayNameWithCorners extends StatelessWidget {
  String verseNameAr;
  Color? colorsOfCorners = ColorsManager.gold;
  DisplayNameWithCorners({super.key,required this.verseNameAr,this.colorsOfCorners});
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image(color: colorsOfCorners,image: AssetImage('assets/sura_corner_left.png')),
            Image(color: colorsOfCorners,image: AssetImage('assets/sura_corner_right.png')),
          ],
        ),
        Text(
          verseNameAr,
          style: TextStyle(
            color: colorsOfCorners,
            fontSize: 20,
            fontWeight: FontWeight.w600,
          ),
        ),
      ],
    );
  }
}