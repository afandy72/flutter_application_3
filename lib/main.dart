import 'package:flutter/material.dart';
import 'package:flutter_application_3/Home.dart';
import 'package:flutter_application_3/responsive/mobile.dart';
import 'package:flutter_application_3/responsive/responsive.dart';
import 'package:flutter_application_3/responsive/web.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: Responsive(
        mymobile: MobileScreen(),
        myweb: WebScreen(),
      ),
    );
  }
}
