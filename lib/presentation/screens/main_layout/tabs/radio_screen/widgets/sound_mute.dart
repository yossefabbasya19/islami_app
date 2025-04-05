import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:islami_app/core/colors_maneger/colors_manegar.dart';
import 'package:islami_app/core/constant/radio_DM/radio_DM.dart';

class SoundMute extends StatefulWidget {
  AudioPlayer audioPlayer;

  SoundMute({super.key, required this.audioPlayer});

  @override
  State<SoundMute> createState() => _SoundMuteState();
}

class _SoundMuteState extends State<SoundMute> {
  bool isMuted =false ;
  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        isMuted = !isMuted;
        isMuted
            ? widget.audioPlayer.setVolume(0)
            : widget.audioPlayer.setVolume(1);
        setState(() {});
      },
      icon: Icon(
       isMuted ? Icons.volume_off : Icons.volume_up,
        size: 30,
        color: ColorsManager.black,
      ),
    );
  }
}
