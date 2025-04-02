import 'package:flutter/material.dart';
import 'package:islami_app/core/assets/assets.dart';
import 'package:islami_app/core/colors_maneger/colors_manegar.dart';
import 'package:islami_app/core/constant/azkar_DM.dart';

class AzkarGridView extends StatelessWidget {
  List<AzkarDm> azkarCardsData = [
    AzkarDm(imagePath: Assets.sleepingAzkar, azkarName: "Sleeping Azkar"),
    AzkarDm(imagePath: Assets.eveningAzkar, azkarName: "Evening Azkar"),
    AzkarDm(imagePath: Assets.morningAzkar, azkarName: "Morning Azkar"),
    AzkarDm(imagePath: Assets.wakingAzkar, azkarName: "Waking Azkar"),
  ];

  @override
  Widget build(BuildContext context) {
    return SliverGrid(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 2/3,
      ),
      delegate: SliverChildBuilderDelegate(childCount: azkarCardsData.length, (
        context,
        index,
      ) {
        return Container(
          margin: EdgeInsets.all(10),
          decoration: BoxDecoration(
            border: Border.all(color: ColorsManager.gold, width: 2),
            borderRadius: BorderRadius.circular(20),
            color: ColorsManager.black,
          ),
          child: Column(
            children: [
              Spacer(flex: 2,),
              Image(image: AssetImage(azkarCardsData[index].imagePath)),
              Spacer(flex: 1,),
              Text(
                textAlign: TextAlign.center,
                azkarCardsData[index].azkarName,
                style: TextStyle(
                  color: ColorsManager.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                ),
              ),
              Spacer(flex: 1,),
            ],
          ),
        );
      }),
    );
  }
}
