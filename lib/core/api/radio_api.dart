import 'package:dio/dio.dart';
import 'package:islami_app/core/constant/radio_DM/radio_DM.dart';

class RadioApi {
  Dio dio =Dio();
  List<RadioDm> radioChanel=[];
  Future<List<RadioDm>> getData ()async{
    try{
      Response response = await dio.get(
          "https://mp3quran.net/api/v3/radios?language=eng");
      List data = response.data["radios"];
      fillRadioChanel(data);
      return radioChanel;
    }on DioException catch(e){
      throw Exception(e.response!.data);
    }catch(e){
      throw Exception(e);
    }
  }
  void fillRadioChanel(List data){

    for(var item in data){
      radioChanel.add(RadioDm.fromJson(item));

    }
  }
}