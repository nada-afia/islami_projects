import 'package:flutter/cupertino.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../utilits/shared.dart';

class MostRecentlyProvider extends ChangeNotifier {
  List<int> mostRecentlyList = [];

  void getLastSura() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    List<String> mostRecentlyListAsString =
        prefs.getStringList(SharedPreferencekey.mostRecentlyKey) ?? [];
    mostRecentlyList =
        mostRecentlyListAsString.map((e) => int.parse(e)).toList();
    notifyListeners();
  }
}