import 'package:bmi/InputPage.dart';
import 'package:flutter/material.dart';

import 'MyColor.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
          appBarTheme: const AppBarTheme(
              backgroundColor: MyColor.blackbleu), //nav bar coloration
          //canvasColor:  MyColor.blackbleu.shade50,
          scaffoldBackgroundColor: MyColor.blackbleu.shade50),
      initialRoute: '/',
      routes: {
        '/': (context) => InputPage(),
      },
    );
  }
}
