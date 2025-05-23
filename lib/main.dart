import 'package:flutter/material.dart';
import 'package:uop_rwk_day3/screens/button_demo_screen.dart';
import 'package:uop_rwk_day3/screens/dynamic_gridview.dart';
import 'package:uop_rwk_day3/screens/dynamic_listview_screen.dart';
import 'package:uop_rwk_day3/screens/input_demo_screen.dart';
import 'package:uop_rwk_day3/screens/listview_demo1_screen.dart';
import 'package:uop_rwk_day3/screens/simple_calculator_screen.dart';
import 'package:uop_rwk_day3/screens/simple_gridview.dart';
import 'package:uop_rwk_day3/screens/stf_screen_demo.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const SimpleCalculatorScreen(),
    );
  }
}
