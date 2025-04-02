class PrayTimeDm {
  Map<String, dynamic> timing;

  String dayName;


  PrayTimeDm({required this.dayName, required this.timing}) ;

  factory PrayTimeDm.fromJson(Json){
    return PrayTimeDm(
        dayName: Json["data"]["date"]["gregorian"]["weekday"]["en"],
        timing:  Json["data"]["timings"]);
  }
}
