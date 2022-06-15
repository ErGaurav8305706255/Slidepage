import 'package:flutter/material.dart';
// import 'package:slidepage/firstrpage.dart';
// import 'package:slidepage/fourthpage.dart';
// import 'package:slidepage/secondpage.dart';
// import 'package:slidepage/bottom_navigationbar.dart';
// import 'package:carousel_slider/carousel_slider.dart';
// import 'package:slidepage/thirdpage.dart';
import 'navigation.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyStatefulPage(),
    );
  }

}
