import 'package:carousel_slider/carousel_slider.dart';
import 'package:date_format/date_format.dart';
import 'package:flutter/material.dart';
import 'package:islami_app/core/api/pray_time_api.dart';
import 'package:islami_app/core/colors_maneger/colors_manegar.dart';
import 'package:islami_app/core/constant/pray_time_DM.dart';

class CustomCarouselSlider extends StatefulWidget {
  List<String> praysTime;

  List<String> praysName;

  CustomCarouselSlider({
    super.key,
    required this.praysName,
    required this.praysTime,
  });

  @override
  State<CustomCarouselSlider> createState() => _CustomCarouselSliderState();
}

class _CustomCarouselSliderState extends State<CustomCarouselSlider> {


  int hour = 0;

  String partOfDay = "AM";

  String convertTo12HourClock(String time) {
    hour = DateTime.parse("0000-00-00 " + time).hour;
    if (hour > 12) {
      hour = hour - 12;
      partOfDay = "BM";
      return hour.toString() + time.substring(2);
    } else if (hour == 0) {
      hour = 12;
      partOfDay = "AM";
      return hour.toString() + time.substring(2);
    } else if (hour == 12) {
      partOfDay = "BM";
      return hour.toString() + time.substring(2);
    }
    return time;
  }

  @override
  Widget build(BuildContext context) {
    int index = -1;
    return widget.praysTime.isEmpty
        ? CircularProgressIndicator(color: ColorsManager.darkBrown)
        : CarouselSlider(
          items:
              widget.praysTime.map((e) {
                String dateTimeIn12Hour = convertTo12HourClock(e);
                index++;
                return Container(
                  margin: EdgeInsets.symmetric(horizontal: 5),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [
                        ColorsManager.black,
                        ColorsManager.black.withOpacity(0.1),
                      ],
                    ),
                  ),
                  width: MediaQuery.sizeOf(context).width * 0.3,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        widget.praysName[index],
                        style: TextStyle(
                          color: ColorsManager.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      Text(
                        dateTimeIn12Hour,
                        style: TextStyle(
                          color: ColorsManager.white,
                          fontSize: 32,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      Text(
                        partOfDay,
                        style: TextStyle(
                          color: ColorsManager.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ],
                  ),
                );
              }).toList(),
          options: CarouselOptions(
            viewportFraction: 0.34,
            enlargeCenterPage: true,
            scrollDirection: Axis.horizontal,
            height: 160,
          ),
        );
  }
}
