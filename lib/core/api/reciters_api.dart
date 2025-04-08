import 'package:dio/dio.dart';
import 'package:islami_app/core/constant/reciters_DM/reciters_DM.dart';

class RecitersApi {
  Dio dio = Dio();
  late List data;
  Future<List<RecitersDm>> getDate() async {
    try{
      List<RecitersDm> dataInList = [];
      Response response = await dio.get(
        'https://www.mp3quran.net/api/v3/reciters?language=ar',
      );
      data = response.data["reciters"];
      fillListModel(dataInList);
      return dataInList;
    }on DioException catch(e){
      throw Exception(e);
    }catch(e){
      throw Exception(e);
    }
  }
  void fillListModel(List<RecitersDm> dataInList){
    for(var item in data){
      String suraNumbersString = item["moshaf"][0]["surah_list"];

      List<String> suraList = suraNumbersString.split(",");

      dataInList.add(RecitersDm.fromJson(item,suraList));
    }
  }
}
