import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:islami_app/core/assets/assets.dart';
import 'package:islami_app/core/colors_maneger/colors_manegar.dart';
import 'package:islami_app/core/constant/constant.dart';
import 'package:islami_app/core/share_preferance_handling/share_preferance_handling.dart';
import 'package:islami_app/cubit/most_recent_cubit/most_recent_cubit.dart';

class MostRecentlyCard extends StatefulWidget {
  List <int >mostRecently;
  MostRecentlyCard({super.key,required this.mostRecently});

  @override
  State<MostRecentlyCard> createState() => MostRecentlyCardState();
}

class MostRecentlyCardState extends State<MostRecentlyCard> {



  @override
  Widget build(BuildContext context) {

    return SliverToBoxAdapter(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "most Recently",
            style: TextStyle(
              color: ColorsManager.white,
              fontSize: 20,
              fontWeight: FontWeight.w600,
            ),
          ),
          SizedBox(height: 10),
          SizedBox(
            width: double.infinity,
            height: 150,
            child: ListView.builder(
              itemCount: widget.mostRecently.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return buildContainer(
                  context,
                  surahDataModel: surahList[widget.mostRecently[index]],
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  Container buildContainer(
    BuildContext context, {
    required SurahDataModel surahDataModel,
  }) {
    return Container(
      width: MediaQuery.sizeOf(context).width * 0.8,
      margin: EdgeInsets.only(right: 10),
      decoration: BoxDecoration(
        color: ColorsManager.gold,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    surahDataModel.suraNameEg,
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
                  ),
                  Text(
                    surahDataModel.suraNameAr,
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
                  ),
                  Text(
                    surahDataModel.ayaNumber,
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.w700),
                  ),
                ],
              ),
            ),
          ),
          Expanded(child: Image(image: AssetImage(Assets.surahCardImage))),
        ],
      ),
    );
  }
}
