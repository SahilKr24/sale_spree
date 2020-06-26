import 'package:flutter/material.dart';
import 'screens/newhome.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        brightness: Brightness.light,
      ),
      // darkTheme: ThemeData(
      //   brightness: Brightness.dark,
      // ),
      home: NewHome(),
    );
  }
}
