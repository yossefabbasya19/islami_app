import 'package:flutter/material.dart';
import 'package:islami_app/core/assets/assets.dart';
import 'package:islami_app/core/colors_maneger/colors_manegar.dart';
import 'package:islami_app/core/router/my_router.dart';

class Splash extends StatefulWidget{
  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    Future.delayed(Duration(seconds: 2),() {
      Navigator.pushReplacementNamed(context,MyRouter.home);
    },);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
          Image(image: AssetImage(Assets.appLogo)),
          Image(image: AssetImage(Assets.appBranding)),
        ],
        ),
      ),
    );
  }
}