import 'package:flutter/material.dart';
import 'package:islami_app/core/colors_maneger/colors_manegar.dart';

abstract class MyThemes {
  static ThemeData dartThemes = ThemeData(
    appBarTheme: AppBarTheme(
      color: ColorsManager.black,
      centerTitle: true,
      iconTheme: IconThemeData(color: ColorsManager.gold),
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: ColorsManager.gold,
      type: BottomNavigationBarType.fixed,
      selectedItemColor: ColorsManager.white,
      unselectedItemColor: ColorsManager.black,
    ),
    scaffoldBackgroundColor: ColorsManager.black,
    textTheme: TextTheme(
      labelSmall: TextStyle(color: ColorsManager.gold,fontSize: 17,fontWeight: FontWeight.w700),
      titleMedium: TextStyle(color: ColorsManager.gold,fontSize: 20,fontWeight: FontWeight.w700,)
    )
  );
}
