import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.send))],
        backgroundColor: Colors.black,
        title: SvgPicture.asset(
          "assets/img/Instagram_logo.svg",
          width: 150,
          color: Colors.white,
        ),
      ),
    );
  }
}
