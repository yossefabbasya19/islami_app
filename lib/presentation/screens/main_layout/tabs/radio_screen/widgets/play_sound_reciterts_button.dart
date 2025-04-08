import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:islami_app/core/colors_maneger/colors_manegar.dart';
import 'package:islami_app/core/constant/reciters_DM/reciters_DM.dart';

class PlaySoundRecitertsButton extends StatefulWidget {
  RecitersDm recitersDm;
  AudioPlayer audioPlayer;

  PlaySoundRecitertsButton({
    super.key,
    required this.recitersDm,
    required this.audioPlayer,
  });

  @override
  State<PlaySoundRecitertsButton> createState() =>
      _PlaySoundRecitertsButtonState();
}

class _PlaySoundRecitertsButtonState extends State<PlaySoundRecitertsButton> {
  bool isPlay = false;
  String indexOfSuraList = '';
  int counter = 0;
  String url = '';

  @override
  void onPressed() {
    indexOfSuraList = widget.recitersDm.surahList[counter];
    url = urlFormated();
    isPlay = !isPlay;
    isPlay
        ? widget.audioPlayer.play(UrlSource(url))
        : widget.audioPlayer.pause();
    playNextSurah();
    setState(() {});
  }

  void playNextSurah() {
    widget.audioPlayer.onPlayerComplete.listen((event) {
      counter++;
      if(counter ==widget.recitersDm.surahList.length){
        counter=0;
      }
      indexOfSuraList = widget.recitersDm.surahList[counter];
      url = urlFormated();
      widget.audioPlayer.play(UrlSource(url));

    });
  }

  String urlFormated() {
    if(indexOfSuraList.length == 1) return widget.recitersDm.url + "00${indexOfSuraList}.mp3";
    else if(indexOfSuraList.length == 2) return widget.recitersDm.url + "0${indexOfSuraList}.mp3";
    else  return widget.recitersDm.url + "${indexOfSuraList}.mp3";
  }

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onPressed,
      icon: isPlay ? Icon(Icons.pause) : Icon(Icons.play_arrow),
      color: ColorsManager.black,
      iconSize: 35,
    );
  }
}
