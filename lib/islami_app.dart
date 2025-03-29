import 'package:audioplayers/audioplayers.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:islami_app/config/themes.dart';
import 'package:islami_app/core/router/my_router.dart';
import 'package:islami_app/presentation/screens/splash_screen/splash.dart';

class IslamiApp extends StatefulWidget {
  IslamiApp({super.key});

  @override
  State<IslamiApp> createState() => _IslamiAppState();
}

class _IslamiAppState extends State<IslamiApp> {
  /*  final player = AudioPlayer();
  String url = 'https://mp3quran.net/api/v3/radios?language=ar';
 late Response response;
@override
  void initState() {
    // TODO: implement initState
    super.initState();
    getData();
  }
  void getData() async {
    response = await Dio().get(
      'https://www.mp3quran.net/api/v3/reciters?language=ar',
    );
  }*/

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.dark,
      darkTheme: MyThemes.dartThemes,
      routes: MyRouter.routes,
      initialRoute: MyRouter.splash,
     /* home: Scaffold(
        body: SafeArea(
          child: Container(
            child: ElevatedButton(
              onLongPress: () {
                player.pause();
              },
              child: Text("data"),
              onPressed: () {
                player.play(
                  UrlSource((response.data["reciters"][0]["moshaf"][0]["server"])+"001.mp3"),
                );
                player.onPlayerComplete.listen((event) {
                  player.play(
                    UrlSource((response.data["reciters"][0]["moshaf"][0]["server"])+"002.mp3"),
                  );
                  print("object");
                },);
              },
            ),
          ),
        ),
      ),*/
    );
  }
}
