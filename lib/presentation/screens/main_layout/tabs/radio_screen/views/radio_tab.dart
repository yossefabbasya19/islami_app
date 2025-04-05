import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:islami_app/core/api/radio_api.dart';
import 'package:islami_app/core/assets/assets.dart';
import 'package:islami_app/core/colors_maneger/colors_manegar.dart';
import 'package:islami_app/core/constant/radio_DM/radio_DM.dart';
import 'package:islami_app/presentation/screens/main_layout/tabs/radio_screen/widgets/play_sound_radio_button.dart';
import 'package:islami_app/presentation/screens/main_layout/tabs/radio_screen/widgets/sound_mute.dart';

class RadioTab extends StatefulWidget {
  RadioTab({super.key});

  @override
  State<RadioTab> createState() => _RadioTabState();
}

class _RadioTabState extends State<RadioTab> {
  AudioPlayer audioPlayer = AudioPlayer();
  bool isMuted = false;

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: RadioApi().getData(),
      builder: (context, snapShot) {
        if (snapShot.hasData) {
          return ListView.builder(
            itemCount: snapShot.data!.length,
            itemBuilder: (context, index) {
              return Container(
                width: double.infinity,
                height: 154,
                margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: ColorsManager.gold,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Spacer(flex: 1),
                    Text(
                      snapShot.data![index].sheikhName,
                      style: TextStyle(
                        color: ColorsManager.black,
                        fontSize: 20,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                    Spacer(flex: 1),
                    Stack(
                      alignment: Alignment.bottomCenter,
                      children: [
                        Image(image: AssetImage(Assets.soundPause)),
                        Row(
                          children: [
                            Spacer(),
                            PlaySoundRadioButton(
                              radioDm: snapShot.data![index],
                              audioPlayer: audioPlayer,
                            ),
                            SoundMute(audioPlayer: audioPlayer),
                            Spacer(),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              );
            },
          );
        } else if (snapShot.hasError) {
          return Text("error", style: TextStyle(color: ColorsManager.white));
        } else {
          return Container(
            alignment: Alignment.center,
            height: 100,
            width: 100,
            child: CircularProgressIndicator(color: ColorsManager.gold),
          );
        }
      },
    );
  }
}
