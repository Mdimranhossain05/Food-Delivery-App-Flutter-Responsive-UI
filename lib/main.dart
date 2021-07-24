import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:second_project/screens/DescriptionPage.dart';
import 'package:second_project/screens/LandingScreen.dart';
import 'package:second_project/utils/constrain.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(statusBarColor: COLOR_GREEN));
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Food App",
      theme: ThemeData(textTheme: defaultText),
      home: LandingScreen(),
    );
  }
}

