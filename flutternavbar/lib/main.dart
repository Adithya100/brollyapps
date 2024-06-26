import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutternavbar/screens/home.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
      // routes: <String, WidgetBuilder>(
      //   Setting.routeName: (BuildContext context) => Settings(),
      // ),
    );
  }
}
