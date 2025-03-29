import 'package:flutter/material.dart';
import 'package:islami_app/core/assets/assets.dart';
import 'package:islami_app/core/colors_maneger/colors_manegar.dart';
import 'package:islami_app/core/constant/constant.dart';
import 'package:islami_app/core/router/my_router.dart';

class SuraListWidget extends StatelessWidget {
  SurahDataModel surahDataModel;
  void Function(SurahDataModel) addToMostRevently;
  int index;

  SuraListWidget({
    super.key,
    required this.addToMostRevently,
    required this.surahDataModel,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        addToMostRevently(surahDataModel);
        Navigator.pushNamed(
          context,
          MyRouter.quranDetails,
          arguments: SurahDataModelArgument(
            surahDataModel: surahDataModel,
            index: index,
          ),
        );
      },
      child: Row(
        children: [
          Stack(
            alignment: Alignment.center,
            children: [
              Image(image: AssetImage(Assets.surahNumber)),
              Text(
                "$index",
                style: TextStyle(
                  color: ColorsManager.white,
                  fontSize: 24,
                  fontWeight: FontWeight.w800,
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  surahDataModel.suraNameEg,
                  style: TextStyle(
                    color: ColorsManager.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Text(
                  "${surahDataModel.ayaNumber} Verses",
                  style: TextStyle(
                    color: ColorsManager.white,
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ),
          Spacer(),
          Text(
            surahDataModel.suraNameAr,
            style: TextStyle(
              color: ColorsManager.white,
              fontSize: 20,
              fontWeight: FontWeight.w800,
            ),
          ),
        ],
      ),
    );
  }
}
