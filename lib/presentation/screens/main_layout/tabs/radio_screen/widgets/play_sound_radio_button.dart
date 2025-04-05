import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:islami_app/core/colors_maneger/colors_manegar.dart';
import 'package:islami_app/core/constant/radio_DM/radio_DM.dart';

class PlaySoundRadioButton extends StatefulWidget {
  RadioDm radioDm;

  AudioPlayer audioPlayer;
  PlaySoundRadioButton({required this.radioDm,required this.audioPlayer});

  @override
  State<PlaySoundRadioButton> createState() => _PlaySoundRadioButtonState();
}

class _PlaySoundRadioButtonState extends State<PlaySoundRadioButton> {
  bool get iconSoundSwitch {
    return widget.radioDm.isSelected;
  }



  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        widget.radioDm.isSelected = !iconSoundSwitch;
        iconSoundSwitch
            ? widget.audioPlayer.play(UrlSource(widget.radioDm.radioUrl))
            : widget.audioPlayer.pause();
        setState(() {});
      },
      icon: Icon(
        iconSoundSwitch ? Icons.pause : Icons.play_arrow,
        size: 40,
        color: ColorsManager.black,
      ),
    );
  }
}
