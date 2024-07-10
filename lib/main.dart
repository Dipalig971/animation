import 'package:animation/screen/animator_widget/home_Screen/home_screen.dart';
import 'package:animation/screen/drag_drop_functionality/view/home_screen/home_Screen.dart';
import 'package:animation/screen/hero_widget/view/details.dart';
import 'package:animation/screen/hero_widget/view/hero_screen.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AnimatorWidgetsScreen(),
      // routes: {
      //   '/':(context) => HomePage(),
      //   '/details':(context) => DetailsScreen(),
      // },
    );
  }
}
