import 'package:islami_app/core/assets/assets.dart';

class OnboardingModel {
  String ImagePath;
  String titleText;
  String bodyText;

  OnboardingModel({
    required this.bodyText,
    required this.ImagePath,
    required this.titleText,
  });
}

List<OnboardingModel> onboardingData = [
  OnboardingModel(
    bodyText: "",
    ImagePath: Assets.onboarding1,
    titleText: "Welcome To Islmi App",
  ),
  OnboardingModel(
    bodyText: "We Are Very Excited To Have You In Our Community",
    ImagePath: Assets.onboarding2,
    titleText: "Welcome To Islmi ",
  ),
  OnboardingModel(
    bodyText: "Read, and your Lord is the Most Generous",
    ImagePath: Assets.onboarding3,
    titleText: "Reading the Quran",
  ),
  OnboardingModel(
    bodyText: "Praise the name of your Lord, the Most High",
    ImagePath: Assets.onboarding4,
    titleText: "Bearish",
  ),
  OnboardingModel(
    bodyText: "You can listen to the Holy Quran Radio through the application for free and easily",
    ImagePath: Assets.onboarding5,
    titleText: "Holy Quran Radio",
  ),
];
