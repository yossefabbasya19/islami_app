import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:islami_app/core/assets/assets.dart';
import 'package:islami_app/core/colors_maneger/colors_manegar.dart';
import 'package:islami_app/core/router/my_router.dart';
import 'package:islami_app/presentation/screens/onboarding/model/onboarding_model.dart';

class Onboarding extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IntroductionScreen(
        dotsFlex: 2,
        controlsPadding: EdgeInsets.symmetric(horizontal: 0),
        controlsMargin: EdgeInsets.symmetric(horizontal: 0),

        dotsDecorator: DotsDecorator(

          size: Size(7, 7),
          activeSize: Size(18, 7),
          activeShape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(27),
          ),

          activeColor: ColorsManager.gold,
        ),
        showBackButton: true,
        back: Text("back", style: Theme.of(context).textTheme.labelSmall),
        done: Text("Finish", style: Theme.of(context).textTheme.labelSmall),
        next: Text("Next", style: Theme.of(context).textTheme.labelSmall),
        onDone: () {
          Navigator.of(context).pushReplacementNamed(MyRouter.home);
        },
        pages:
            onboardingData.map((e) {
              return buildPageViewModel(
                context,
                imagePath: e.ImagePath,
                titleText: e.titleText,
                bodyText: e.bodyText,
              );
            }).toList(),
      ),
    );
  }

  PageViewModel buildPageViewModel(
    BuildContext context, {
    required String imagePath,
    required String titleText,
    required String bodyText,
  }) {
    return PageViewModel(
      decoration: PageDecoration(
        fullScreen: true,
        footerFlex: 0,
        bodyFlex: 100,
        titlePadding: EdgeInsets.all(10),
        bodyPadding: EdgeInsets.only(top: 10)
      ),
      useScrollView: false,
      titleWidget: Image(image: AssetImage(Assets.quranScreenLogo)),
      bodyWidget:Column(
        children: [
          Image(
            image: AssetImage(imagePath),
            height: MediaQuery.sizeOf(context).height * 0.4,
          ),
          SizedBox(height: 30,),
          Text(
            titleText,
            style: Theme.of(context).textTheme.titleMedium,
          ),
        ],
      ),
      footer: Container(
        padding: EdgeInsets.symmetric(horizontal:10),
        child: Text(
          textAlign: TextAlign.center,
          bodyText,
          style: Theme.of(context).textTheme.titleMedium,
        ),
      ),



    );
  }
}
