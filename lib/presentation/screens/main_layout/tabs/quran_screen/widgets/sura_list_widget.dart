import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:islami_app/core/assets/assets.dart';
import 'package:islami_app/core/colors_maneger/colors_manegar.dart';
import 'package:islami_app/core/constant/constant.dart';
import 'package:islami_app/core/router/my_router.dart';
import 'package:islami_app/core/share_preferance_handling/share_preferance_handling.dart';
import 'package:islami_app/cubit/most_recent_cubit/most_recent_cubit.dart';
import 'package:islami_app/presentation/screens/main_layout/tabs/quran_screen/quran_screen.dart';
import 'package:islami_app/presentation/screens/main_layout/tabs/quran_screen/widgets/most_recently_card.dart';

class SuraListWidget extends StatelessWidget {
  SurahDataModel surahDataModel;

  SuraListWidget({
    super.key,
    required this.surahDataModel,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () async{
        BlocProvider.of<MostRecentCubit>(context).addMostRecent(surahDataModel.index-1);
        //await SharePreferencesHandling.addMostRecent((index -1).toString());
        Navigator.pushNamed(
          context,
          MyRouter.quranDetails,
          arguments:
             surahDataModel,
        );
      },
      child: Row(
        children: [
          Stack(
            alignment: Alignment.center,
            children: [
              Image(image: AssetImage(Assets.surahNumber)),
              Text(
                "${surahDataModel.index}",
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
