import 'dart:math';

import 'package:flutter/material.dart';
import 'package:islami_app/core/assets/assets.dart';
import 'package:islami_app/core/colors_maneger/colors_manegar.dart';

class Sepha extends StatefulWidget {
  @override
  State<Sepha> createState() => _SephaState();
}

class _SephaState extends State<Sepha> {
  List<String> sebhaSentence = ["الحمد لله", "استغفرالله", "سبحان الله"];
  int index = 0;
  int counter = 0;
double rotate=0;
  void onClickSebha() {
    index = Random().nextInt(3);
    if (counter == 60) {
      counter = 0;
      rotate = 0;
      rotate+=0.5;
      counter++;
    } else {
      counter++;
      rotate+=0.5;
    }
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 20),
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage(Assets.sebhaBG),
          ),
        ),
        width: double.infinity,
        height: double.infinity,
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: Image(image: AssetImage(Assets.quranScreenLogo)),
            ),
            SliverToBoxAdapter(
              child: Container(
                width: double.infinity,
                child: Text(
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: ColorsManager.white,
                    fontSize: 36,
                    fontWeight: FontWeight.w600,
                  ),
                  'سَبِّحِ اسْمَ رَبِّكَ الأعلى ',
                ),
              ),
            ),
            SliverToBoxAdapter(child: SizedBox(height: 20)),
            SliverToBoxAdapter(
              child: Stack(
                alignment: Alignment.center,
                children: [
                  InkWell(
                    onTap: () {
                      onClickSebha();
                    },
                    child: Transform(
                      alignment: Alignment.center,
                      transform: Matrix4.rotationZ(rotate),
                      child: Image(
                        width: MediaQuery.sizeOf(context).width * 0.7,
                        image: AssetImage(Assets.sebha),
                      ),
                    ),
                  ),
                  Column(
                    children: [
                      Text(
                        sebhaSentence[index],
                        style: TextStyle(
                          color: ColorsManager.white,
                          fontSize: 36,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(height: 20),
                      Text(
                        "$counter",
                        style: TextStyle(
                          color: ColorsManager.white,
                          fontSize: 36,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SliverToBoxAdapter(child: SizedBox(height: 20)),
          ],
        ),
      ),
    );
  }
}
