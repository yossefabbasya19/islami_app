import 'package:flutter/material.dart';
import 'package:islami_app/core/api/pray_time_api.dart';
import 'package:islami_app/core/colors_maneger/colors_manegar.dart';
import 'package:islami_app/core/constant/pray_time_DM.dart';
import 'package:islami_app/presentation/screens/main_layout/tabs/time_screen/widgets/carousel_slider.dart';

class PrayTimeCard extends StatefulWidget {
  PrayTimeCard({super.key});

  @override
  State<PrayTimeCard> createState() => _PrayTimeCardState();
}

class _PrayTimeCardState extends State<PrayTimeCard> {
  IconData volumeButton = Icons.volume_off;

  void onClickVolumeButton() {
    if (volumeButton == Icons.volume_off) {
      volumeButton = Icons.volume_up;
    } else {
      volumeButton = Icons.volume_off;
    }
    setState(() {});
  }

  PrayTimeDm? prayTimeDm;

  List<String> praysTime = [];
  List<String> praysName = [];

  Future<void> getData() async {
    prayTimeDm = await PrayTimeApi().getData();
    filterMap(prayTimeDm!.timing);
    for (var prayTime in prayTimeDm!.timing.values) {
      praysTime.add(prayTime);
    }
    for (var prayName in prayTimeDm!.timing.keys) {
      praysName.add(prayName);
    }

    nextPrayResult = nextPray(prayTimeDm!.timing);
    setState(() {});
  }

  void filterMap(Map<String, dynamic> timingMap) {
    timingMap.removeWhere((key, value) {
      if (key == "Sunrise" ||
          key == "Sunset" ||
          key == "Imsak" ||
          key == "Midnight" ||
          key == "Firstthird" ||
          key == "Lastthird") {
        return true;
      }
      return false;
    });
  }

  String? nextPray(Map<String, dynamic> x) {
    String? nextPrayTime;
    int? nextPray;
    for (var xx in x.values) {
      int prayTimeHour = DateTime.parse("0000-00-00 " + xx).hour;
      int prayTimeMinute = DateTime.parse("0000-00-00 " + xx).minute;
      if (nextPray == null) {
        if (prayTimeHour - DateTime.now().hour < 0) {
          continue;
        }
        if (prayTimeHour - DateTime.now().hour == 0) {
          if (prayTimeMinute - DateTime.now().minute <= 0) {
            continue;
          }
        }
        nextPray = prayTimeHour - DateTime.now().hour;
        nextPrayTime = xx;
      }
    }
    if (nextPray == null) nextPrayTime = x.values.toList()[0];
    return nextPrayTime;
  }

  String? nextPrayResult = '';

  @override
  void initState() {
    super.initState();
    getData();
  }

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Container(
        height: MediaQuery.sizeOf(context).height * 0.38,
        margin: EdgeInsets.symmetric(horizontal: 10),
        decoration: BoxDecoration(
          color: ColorsManager.darkBrown,
          borderRadius: BorderRadius.circular(40),
        ),
        child: Container(
          decoration: BoxDecoration(
            color: ColorsManager.gold,
            borderRadius: BorderRadius.circular(40),
          ),
          child: Column(
            children: [
              Text(
                "pray Time",
                style: TextStyle(
                  color: ColorsManager.darkBrown,
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                ),
              ),
              Text(
                prayTimeDm?.dayName ?? '',
                style: TextStyle(
                  color: ColorsManager.black,
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(height: 5),
              CustomCarouselSlider(praysName: praysName, praysTime: praysTime),
              SizedBox(height: 10),
              Row(
                children: [
                  Spacer(flex: 4),
                  Text(
                    "Next Pray",
                    style: TextStyle(
                      color: ColorsManager.darkBrown,
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  Text(
                    "- ${nextPrayResult}",
                    style: TextStyle(
                      color: ColorsManager.black,
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  Spacer(flex: 2),
                  IconButton(
                    onPressed: () => onClickVolumeButton(),
                    icon: Icon(volumeButton),
                  ),
                  Spacer(flex: 1),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
