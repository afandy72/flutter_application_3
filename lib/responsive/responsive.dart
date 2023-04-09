import 'package:flutter/material.dart';
import 'package:flutter_application_3/responsive/mobile.dart';

class Responsive extends StatefulWidget {
  final mymobile;
  final myweb;
  const Responsive({super.key, required this.mymobile, required this.myweb});

  @override
  State<Responsive> createState() => _ResponsiveState();
}

class _ResponsiveState extends State<Responsive> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (BuildContext, BoxConstraints) {
      if (BoxConstraints.maxWidth > 600) {
        return widget.myweb;
      } else {
        return widget.mymobile;
      }
    });
  }
}
