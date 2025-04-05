class RecitersDm {
  String name;
  String url;
  List<String> surahList;

  RecitersDm(
      {required this.name, required this.surahList, required this.url});

  factory RecitersDm.fromJson(json,List<String> suraList){
    return RecitersDm(
        name: json["name"],
        surahList: suraList,
        url: json["moshaf"][0]["server"]);
  }
}