import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:islami_app/core/assets/assets.dart';
import 'package:islami_app/core/colors_maneger/colors_manegar.dart';
import 'package:islami_app/presentation/screens/main_layout/tabs/hadeth_screen/hadeth_screen.dart';
import 'package:islami_app/presentation/screens/main_layout/tabs/quran_screen/quran_screen.dart';
import 'package:islami_app/presentation/screens/main_layout/tabs/radio_screen/radio_screen.dart';
import 'package:islami_app/presentation/screens/main_layout/tabs/sepha_screen/sepha_screen.dart';
import 'package:islami_app/presentation/screens/main_layout/tabs/time_screen/time_screen.dart';

class Home extends StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<Widget> screens = [Quran(), Hadeth(), Sepha(), RadioScreen(), Time()];

  int selectedTab = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[selectedTab],
      bottomNavigationBar: buildBottomNavigationBar(),
    );
  }
  Widget isSelectedTab(int selected, String path) {
    if (selected == selectedTab) {
      return Container(
        margin: EdgeInsets.symmetric(horizontal: 5),
        decoration: BoxDecoration(
          color: ColorsManager.black.withOpacity(0.5),
          borderRadius: BorderRadius.circular(66),
        ),
        width: double.infinity,
        height: 40,
        child: ImageIcon(AssetImage(path)),
      );
    }
    return ImageIcon(AssetImage(path));
  }

  BottomNavigationBar buildBottomNavigationBar() {
    return BottomNavigationBar(
      currentIndex: selectedTab,
      onTap: (value) {
        selectedTab = value;
        setState(() {});
      },
      items: [
        BottomNavigationBarItem(
          label: "quran",
          icon: isSelectedTab(0, Assets.quranIcon),
        ),
        BottomNavigationBarItem(
          label: "hadeth",
          icon: isSelectedTab(1, Assets.hadethIcon),
        ),
        BottomNavigationBarItem(
          label: "sepha",
          icon: isSelectedTab(2, Assets.sephaIcon),
        ),
        BottomNavigationBarItem(
          label: "radio",
          icon: isSelectedTab(3, Assets.radioIcon),
        ),
        BottomNavigationBarItem(
          label: "time",
          icon: isSelectedTab(4, Assets.timeIcon),
        ),
      ],
    );
  }
}
