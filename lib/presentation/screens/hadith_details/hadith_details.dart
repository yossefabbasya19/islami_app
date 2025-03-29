import 'package:flutter/material.dart';
import 'package:islami_app/core/colors_maneger/colors_manegar.dart';
import 'package:islami_app/core/constant/hadithDM.dart';
import 'package:islami_app/presentation/screens/quran_details_screen/widgets/display_name_verse.dart';

class HadithDetails extends StatefulWidget{
  
  @override
  State<HadithDetails> createState() => _HadithDetailsState();
}

class _HadithDetailsState extends State<HadithDetails> {
  late Hadithdm hadith;
  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
    hadith = ModalRoute.settingsOf(context)!.arguments as Hadithdm;
    
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: ColorsManager.black,toolbarHeight: 40,),
      body: Column(
        children: [
          DisplayNameWithCorners(verseNameAr: hadith.hadithTitle,colorsOfCorners: ColorsManager.gold,),
          Expanded(
            child: ListView.builder(itemCount: 1,itemBuilder: (context, index) {
              return Container(
                margin: EdgeInsets.all(10),
                child: Text(
                  hadith.hadithBody,
                  style: TextStyle(
                    color: ColorsManager.gold,
                    fontSize: 24,
                    fontWeight: FontWeight.w600,
                  ),
                  textDirection: TextDirection.rtl,
                  textAlign: TextAlign.center,
                ),
              );
            },),
          ),
        ],
      ),
    );
  }
}