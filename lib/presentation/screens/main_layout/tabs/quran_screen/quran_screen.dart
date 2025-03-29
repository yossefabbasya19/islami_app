import 'package:flutter/material.dart';
import 'package:islami_app/core/assets/assets.dart';
import 'package:islami_app/core/colors_maneger/colors_manegar.dart';
import 'package:islami_app/core/constant/constant.dart';
import 'package:islami_app/presentation/screens/main_layout/tabs/quran_screen/widgets/most_recently_card.dart';
import 'package:islami_app/presentation/screens/main_layout/tabs/quran_screen/widgets/sura_list_widget.dart';

class Quran extends StatefulWidget {
  @override
  State<Quran> createState() => _QuranState();
}

class _QuranState extends State<Quran> {
  TextEditingController myController = TextEditingController();
  List<SurahDataModel> filterSuraList = [];
  List<SurahDataModel> mostRecently = [
    SurahDataModel(suraNameAr: "", suraNameEg: "", ayaNumber: ""),
    SurahDataModel(suraNameAr: "", suraNameEg: "", ayaNumber: ""),
    SurahDataModel(suraNameAr: "", suraNameEg: "", ayaNumber: ""),
    SurahDataModel(suraNameAr: "", suraNameEg: "", ayaNumber: ""),
    SurahDataModel(suraNameAr: "", suraNameEg: "", ayaNumber: ""),
    SurahDataModel(suraNameAr: "", suraNameEg: "", ayaNumber: ""),
  ];

  int indexOfMostRecently = 0;
  bool checkItemInList(SurahDataModel surahDataModel){
    return mostRecently.any((element) => element==surahDataModel,);
  }
  void addToMostRevently(SurahDataModel surahDataModel) {
    if (indexOfMostRecently >= 6) {
      indexOfMostRecently = 0;
      if(checkItemInList(surahDataModel))return;
      mostRecently[indexOfMostRecently] = surahDataModel;
      indexOfMostRecently++;
    } else {
      if(checkItemInList(surahDataModel))return;
      mostRecently[indexOfMostRecently] = surahDataModel;
      indexOfMostRecently++;
    }
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.fill,
          image: AssetImage(Assets.quranScreenBackground),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0),
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: Image(image: AssetImage(Assets.quranScreenLogo)),
            ),
            SliverToBoxAdapter(child: buildTextField()),
            SliverToBoxAdapter(child: SizedBox(height: 20)),
            SliverToBoxAdapter(
              child: Text(
                "most Recently",
                style: TextStyle(
                  color: ColorsManager.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            SliverToBoxAdapter(child: SizedBox(height: 10)),
            SliverToBoxAdapter(
              child: SizedBox(
                width: double.infinity,
                height: 150,
                child: ListView.builder(
                  itemCount: mostRecently.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return MostRecentlyCard(mostRecently: mostRecently[index]);
                  },
                ),
              ),
            ),
            SliverToBoxAdapter(child: SizedBox(height: 10)),
            SliverToBoxAdapter(
              child: Text(
                "Suras List",
                style: TextStyle(
                  color: ColorsManager.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            SliverList.separated(
              itemBuilder:
                  (context, index) => SuraListWidget(
                    addToMostRevently: addToMostRevently,
                    surahDataModel: filterSuraList.isEmpty?surahList[index]:filterSuraList[index],
                    index: index + 1,
                  ),
              separatorBuilder: (context, index) => Divider(),
              itemCount: filterSuraList.isEmpty?surahList.length:filterSuraList.length,
            ),
          ],
        ),
      ),
      //color: Colors.pinkAccent,
    );
  }
  void surahSearch(value){
    filterSuraList = surahList.where((element) {
      return element.suraNameAr.contains(value);
    }).toList();
    setState(() {});
  }
  SizedBox buildTextField() {
    return SizedBox(
      height: 50,
      child: TextField(
        onChanged:surahSearch,
        style: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w500,
          color: ColorsManager.ofWhite,
        ),
        cursorColor: ColorsManager.ofWhite,
        decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: ColorsManager.gold),
            borderRadius: BorderRadius.circular(10),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: ColorsManager.gold),
            borderRadius: BorderRadius.circular(10),
          ),
          errorBorder: OutlineInputBorder(
            borderSide: BorderSide(color: ColorsManager.red),
            borderRadius: BorderRadius.circular(10),
          ),
          labelText: "Sura Name",
          labelStyle: TextStyle(color: ColorsManager.white),
          prefixIcon: ImageIcon(
            AssetImage(Assets.quranIcon),
            color: ColorsManager.gold,
          ),
        ),
      ),
    );
  }
}
