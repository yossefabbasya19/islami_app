import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:islami_app/core/assets/assets.dart';
import 'package:islami_app/core/colors_maneger/colors_manegar.dart';
import 'package:islami_app/presentation/screens/main_layout/tabs/time_screen/widgets/azkar_grid_view.dart';
import 'package:islami_app/presentation/screens/main_layout/tabs/time_screen/widgets/pray_time_card.dart';

class Time extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage(Assets.timeScreenBg),
          ),
        ),
        child: SafeArea(
          child: CustomScrollView(
            slivers: [
              SliverToBoxAdapter(
                child: Image(image: AssetImage(Assets.quranScreenLogo)),
              ),
              PrayTimeCard(),
              SliverToBoxAdapter(child: SizedBox(height: 10)),
              SliverToBoxAdapter(
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 20),
                  child: Text(
                    "Azkar",
                    style: TextStyle(
                      color: ColorsManager.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ),
              SliverToBoxAdapter(child: SizedBox(height: 10)),
              AzkarGridView(),
            ],
          ),
        ),
      ),
    );
  }
}
