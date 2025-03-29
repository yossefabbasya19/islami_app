import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami_app/core/assets/assets.dart';
import 'package:islami_app/core/colors_maneger/colors_manegar.dart';
import 'package:islami_app/core/constant/hadithDM.dart';
import 'package:islami_app/core/router/my_router.dart';
import 'package:islami_app/presentation/screens/quran_details_screen/widgets/display_name_verse.dart';

class HadithContentCard extends StatefulWidget {
  HadithContentCard({super.key, required this.indexOfFile});

  int indexOfFile;

  @override
  State<HadithContentCard> createState() => _HadithContentCardState();
}

class _HadithContentCardState extends State<HadithContentCard> {
  late String hadithTitle = '';

  late String hadithBody = '';

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    loadHadithFile();
  }

  void loadHadithFile() async {
    String hadithData = await rootBundle.loadString(
      'assets/files/Hadeeth/h${widget.indexOfFile + 1}.txt',
    );
    //List splitingToList = hadithData.trim().split("\n");
    hadithTitle = hadithData.substring(0, hadithData.indexOf('\n'));
    hadithBody = hadithData.substring(hadithData.indexOf("\n") + 1);
    /*for(int i = 1;i<splitingToList.length;i++){
      hadithBody += splitingToList[i];
    }*/
    print(hadithTitle);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, MyRouter.hadithDetails,arguments: Hadithdm(hadithBody: hadithBody, hadithTitle: hadithTitle));
      },
      child: Container(
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: ColorsManager.gold,
          borderRadius: BorderRadius.circular(20),
        ),
        margin: EdgeInsets.all(10),
        width: double.infinity,
        child: Column(
          children: [
            DisplayNameWithCorners(
              verseNameAr: hadithTitle,
              colorsOfCorners: ColorsManager.black,
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      alignment: Alignment.center,
                      fit: BoxFit.fill,
                      image: AssetImage(Assets.hadithCardBackground),
                    ),
                  ),
                  child: Text(
                    hadithBody,
                    overflow: TextOverflow.fade,
                    textDirection: TextDirection.rtl,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
