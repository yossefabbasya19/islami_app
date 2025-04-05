import 'package:flutter/material.dart';
import 'package:islami_app/core/assets/assets.dart';
import 'package:islami_app/presentation/screens/main_layout/tabs/radio_screen/views/radio_tab.dart';
import 'package:islami_app/presentation/screens/main_layout/tabs/radio_screen/views/reciters_tab.dart';
import 'package:islami_app/presentation/screens/main_layout/tabs/radio_screen/widgets/radio_tab_bar.dart';

class RadioScreen extends StatelessWidget {
  List<Widget> tabs = [RadioTab(), RecitersTab()];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        body: SafeArea(
          child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage(Assets.timeScreenBg),
              ),
            ),
            width: double.infinity,
            height: double.infinity,
            child: Column(
              children: [
                Image(image: AssetImage(Assets.quranScreenLogo)),
                RadioTabBar(),
                Expanded(child: TabBarView(children: tabs)),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
