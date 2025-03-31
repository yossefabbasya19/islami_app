import 'package:shared_preferences/shared_preferences.dart';

class SharePreferencesHandling {
  static Future<void> addMostRecent(String index) async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    List<String> mostRecentIndex = preferences.getStringList("itemsKey") ?? [];
    if (mostRecentIndex.contains(index)) {
      return;
    } else {
      if (mostRecentIndex.length >= 6) {
        mostRecentIndex.remove(mostRecentIndex.first);
        mostRecentIndex.add(index);
      } else {
        mostRecentIndex.add(index);
      }
    }
    preferences.setStringList("itemsKey", mostRecentIndex);
  }

  static Future<List<int>> getMostRecentAsListString() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    List<String> mostRecentIndex = preferences.getStringList("itemsKey") ?? [];
    List<int> mostRecentIntIndex = [];
    for (var item in mostRecentIndex) {
      mostRecentIntIndex.add(int.parse(item));
    }
    return mostRecentIntIndex.reversed.toList();
  }
}
