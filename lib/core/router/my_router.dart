import 'package:flutter/cupertino.dart';
import 'package:islami_app/presentation/screens/hadith_details/hadith_details.dart';
import 'package:islami_app/presentation/screens/main_layout/main_layout.dart';
import 'package:islami_app/presentation/screens/quran_details_screen/quran_details_screen.dart';
import 'package:islami_app/presentation/screens/splash_screen/splash.dart';

abstract class MyRouter {
  static const splash = "/splash";
  static const home = "/home";
  static const quranDetails = "/quranDetails";
  static const hadithDetails = "/hadithDetails";
  static Map<String,WidgetBuilder> routes = {
    splash :(_)=>Splash(),
    home :(_)=>Home(),
    quranDetails :(_)=>QuranDetailsScreen(),
    hadithDetails :(_)=>HadithDetails(),
};

}