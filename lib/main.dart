import 'package:demo_sharedpereference/home_screen.dart';
import 'package:demo_sharedpereference/sharedpereference.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
  setDate('');
  setVisible(true);
  getval();
}

late String data = '';
late bool isvisible = false;

getval() async {
  data = await getData();
  isvisible = await getVisible();
  print(data);
  print(isvisible);
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      themeMode: ThemeMode.dark,
      home: Homescreen(),
    );
  }
}
