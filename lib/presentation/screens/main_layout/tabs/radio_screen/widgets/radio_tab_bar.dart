import 'package:flutter/material.dart';
import 'package:islami_app/core/colors_maneger/colors_manegar.dart';

class RadioTabBar extends StatefulWidget {
  RadioTabBar({super.key});

  @override
  State<RadioTabBar> createState() => _RadioTabBarState();
}

class _RadioTabBarState extends State<RadioTabBar> {
  int selectIndex = 0;
  void onTap(value){
    selectIndex = value;
    setState(() {});
  }
  @override
  Widget build(BuildContext context) {
    return TabBar(
      onTap: onTap,
      dividerColor: Colors.transparent,
      indicatorColor: Colors.transparent,
      tabs: [
        Tab(child: selectTab("Radio", 0)),
        Tab(child: selectTab("Reciters", 1)),
      ],
    );
  }

  Widget selectTab(String txt, int index) {
    if (index == selectIndex) {
      return Container(
        alignment: Alignment.center,
        width: double.infinity,
        height: double.infinity,

        decoration: BoxDecoration(
          color: ColorsManager.gold,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Text(
          textAlign: TextAlign.center,
          txt,
          style: TextStyle(
            color: ColorsManager.black,
            fontSize: 16,
            fontWeight: FontWeight.w700,
          ),
        ),
      );
    }
    return Text(txt, style: TextStyle(color: Colors.white));
  }
}
