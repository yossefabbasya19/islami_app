class RadioDm {
  String sheikhName;
  String radioUrl;
  bool isSelected;

  bool isMute;

  RadioDm({
    required this.radioUrl,
    required this.sheikhName,
    this.isSelected = false,
    this.isMute = false,
  });

  factory RadioDm.fromJson(json) {
    return RadioDm(radioUrl: json['url'], sheikhName: json["name"]);
  }
}
