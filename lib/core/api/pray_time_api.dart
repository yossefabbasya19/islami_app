import 'package:date_format/date_format.dart';
import 'package:dio/dio.dart';
import 'package:islami_app/core/constant/pray_time_DM.dart';

class PrayTimeApi {
  Dio dio = Dio();
  String urlPath = 'https://api.aladhan.com/';

  Future<PrayTimeDm> getData() async {
    try {
      Response response = await dio.get(
        "https://api.aladhan.com/v1/timingsByCity/${formatDate(DateTime.now(), [dd,"-",mm,'-',yyyy])}?city=damahnour&country=egypt",
      );
      Map<String, dynamic> data = response.data;
      return PrayTimeDm.fromJson(data);
    }on DioException catch(e){
      String errorText = e.response?.data["data"]??"plz,try again later";
      throw Exception(errorText);
    }catch(e){
      throw Exception("plz,try again");
    }
  }
}
