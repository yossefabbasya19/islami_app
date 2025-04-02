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
  late SurahDataModel surahDataModel;
  String suraContent = '';

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    surahDataModel =
        ModalRoute.settingsOf(context)!.arguments as SurahDataModel;
    loadFileText();
  }

  void loadFileText() async {
    print(surahDataModel.index);
    String loadFile = await rootBundle.loadString(
      "assets/files/Suras/${surahDataModel.index}.txt",
    );
    List<String> loadedFile = loadFile.trim().split("\n");
    for (int i = 0; i < loadedFile.length; i++) {
      suraContent += loadedFile[i] + "[" + "${i+1}" + ']';
    }
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          surahDataModel.suraNameEg,
          style: TextStyle(
            color: ColorsManager.gold,
            fontSize: 24,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      body: Column(
        children: [
          DisplayNameWithCorners(
            verseNameAr: surahDataModel.suraNameAr,
            colorsOfCorners: ColorsManager.gold,
          ),
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
