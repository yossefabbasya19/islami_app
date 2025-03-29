import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami_app/core/colors_maneger/colors_manegar.dart';
import 'package:islami_app/core/constant/constant.dart';
import 'package:islami_app/presentation/screens/quran_details_screen/widgets/display_name_verse.dart';

class QuranDetailsScreen extends StatefulWidget {
  @override
  State<QuranDetailsScreen> createState() => _QuranDetailsScreenState();
}

class _QuranDetailsScreenState extends State<QuranDetailsScreen> {
  late SurahDataModelArgument argumentFromSuraList;
  String suraContent = '';

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    argumentFromSuraList =
        ModalRoute.settingsOf(context)!.arguments as SurahDataModelArgument;
    loadFileText();
  }

  void loadFileText() async {
    String fileContent = await rootBundle.loadString(
      "assets/files/Suras/${argumentFromSuraList.index}.txt",
    );
    List slipingList = fileContent.trim().split("\n");
    for (int i = 0; i < slipingList.length; i++) {
      suraContent += slipingList[i] + " [" + "${i + 1}" + '] ';
    }
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          argumentFromSuraList.surahDataModel.suraNameEg,
          style: TextStyle(
            color: ColorsManager.gold,
            fontSize: 24,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      body: Column(
        children: [
          DisplayNameWithCorners(verseNameAr: argumentFromSuraList.surahDataModel.suraNameAr,colorsOfCorners: ColorsManager.gold ,),
          Expanded(
            child: ListView.builder(
              itemCount: 1,
              itemBuilder: (context, index) {
                return suraContent.isEmpty
                    ? Center(
                      child: CircularProgressIndicator(
                        color: ColorsManager.gold,
                      ),
                    )
                    : Container(
                      margin: EdgeInsets.all(10),
                      child: Text(
                        suraContent,
                        style: TextStyle(
                          color: ColorsManager.gold,
                          fontSize: 24,
                          fontWeight: FontWeight.w600,
                        ),
                        textDirection: TextDirection.rtl,
                        textAlign: TextAlign.center,
                      ),
                    );
              },
            ),
          ),
        ],
      ),
    );
  }
}
