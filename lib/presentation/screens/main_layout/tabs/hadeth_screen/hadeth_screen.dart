import 'package:flutter/material.dart';
import 'package:islami_app/core/assets/assets.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:islami_app/presentation/screens/main_layout/tabs/hadeth_screen/widgets/hadith_content_card.dart';

class Hadeth extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage(Assets.backgroundHadith),
          ),
        ),
        width: double.infinity,
        height: double.infinity,
        child: Column(
          children: [
            Image(image: AssetImage(Assets.quranScreenLogo)),
            Expanded(
              child: CarouselSlider(
                items:
                    List.generate(50, (index) => index).map((indexOfFile) {
                      return HadithContentCard(indexOfFile: indexOfFile,);
                    }).toList(),
                options: CarouselOptions(
                  height: MediaQuery.sizeOf(context).height*0.7,
                  scrollDirection: Axis.horizontal,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
