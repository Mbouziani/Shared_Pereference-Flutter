import 'package:shared_preferences/shared_preferences.dart';

Future setDate(String value) async {
  SharedPreferences prefe = await SharedPreferences.getInstance();

  prefe.setString('username', value);
}

Future<String> getData() async {
  SharedPreferences prefe = await SharedPreferences.getInstance();
  String? username = prefe.getString('username');
  //print(username);
  return username!;
}

Future setVisible(bool value) async {
  SharedPreferences prefe = await SharedPreferences.getInstance();

  prefe.setBool('visibility', value);
}

Future<bool> getVisible() async {
  SharedPreferences prefe = await SharedPreferences.getInstance();
  bool? isvisible = prefe.getBool('visibility');
  //print(username);
  return isvisible!;
}
