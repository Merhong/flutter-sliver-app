import 'package:flutter/material.dart';
import 'package:flutter_sliver_app/appbar/fourth_appbar.dart';
import 'package:flutter_sliver_app/appbar/second_appbar.dart';
import 'package:flutter_sliver_app/appbar/third_appbar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    // // 예제1. CustomScrollView
    // return Scaffold(
    //   body: FirstAppBar(),
    // );
    // // 예제2. AppBar 배경이미지 슬라이드
    // return Scaffold(
    //   body: SecondAppBar(),
    // );
    // // 예제3. Scaffold 없이 Appbar 구현
    // return ThirdAppBar();
    return FourthAppBar();
  }
}