import 'package:shared_preferences/shared_preferences.dart';
class SharedPreferencekey{
   static const String mostRecentlyKey='most_recently';
}
void saveLastSura(int newIndex)async{
  final SharedPreferences prefs = await SharedPreferences.getInstance();
  List<String>mostRecentlyList=prefs.getStringList(SharedPreferencekey.mostRecentlyKey)??[];
  if(mostRecentlyList.contains('$newIndex')){
    mostRecentlyList.remove('$newIndex');
    mostRecentlyList.insert(0,'$newIndex');
  }
  else{
  mostRecentlyList.insert(0,'$newIndex');}
  if(mostRecentlyList.length>5){
    mostRecentlyList.removeLast();
  }
 await prefs.setStringList(SharedPreferencekey.mostRecentlyKey, mostRecentlyList);
}
