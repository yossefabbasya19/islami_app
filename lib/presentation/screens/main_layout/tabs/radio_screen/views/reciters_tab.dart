import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:islami_app/core/api/reciters_api.dart';
import 'package:islami_app/core/assets/assets.dart';
import 'package:islami_app/core/colors_maneger/colors_manegar.dart';
import 'package:islami_app/presentation/screens/main_layout/tabs/radio_screen/widgets/play_sound_radio_button.dart';
import 'package:islami_app/presentation/screens/main_layout/tabs/radio_screen/widgets/play_sound_reciterts_button.dart';
import 'package:islami_app/presentation/screens/main_layout/tabs/radio_screen/widgets/sound_mute.dart';

class RecitersTab extends StatelessWidget {
  AudioPlayer audioPlayer = AudioPlayer();

  RecitersTab({super.key});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: RecitersApi().getDate(),
      builder: (context, snapshot) {
        return ListView.builder(
          itemBuilder: (context, index) {
            if (snapshot.hasData) {
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
                      snapshot.data![index].name,
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
                            PlaySoundRecitertsButton(
                              recitersDm: snapshot.data![index],
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
            }
            else if (snapshot.hasError) {
              return Text("error");
            } else {
              return Container(
                margin: EdgeInsets.all(10),
                alignment: Alignment.center,
                child: CircularProgressIndicator(color: ColorsManager.gold),
              );
            }
          },
        );
      },
    );
  }
}
