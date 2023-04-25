import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_application_3/Screens/add_photo.dart';
import 'package:flutter_application_3/Screens/home.dart';
import 'package:flutter_application_3/Screens/profile.dart';
import 'package:flutter_application_3/Screens/search.dart';

class MobileScreen extends StatefulWidget {
  const MobileScreen({super.key});

  @override
  State<MobileScreen> createState() => _MobileScreen();
}

class _MobileScreen extends State<MobileScreen> {
  final PageController _pageController = PageController();
  @override
  void dispose() {
    _pageController.dispose();
  }

  Color colora = Color.fromARGB(255, 255, 255, 255);
  int curunt = 2;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CupertinoTabBar(
          backgroundColor: Colors.black,
          onTap: (index) {
            _pageController.jumpToPage(index);
            curunt = index;
          },
          items: [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.home_rounded,
                  color:
                      curunt == 0 ? Color.fromARGB(255, 255, 255, 255) : null,
                ),
                label: ""),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.search,
                ),
                label: ""),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.add_box_outlined,
                ),
                label: ""),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.favorite,
                ),
                label: ""),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.person_outline,
                ),
                label: ""),
          ]),
      body: PageView(
        onPageChanged: (index) {
          _pageController.jumpToPage(index);
        },
        physics: NeverScrollableScrollPhysics(),
        controller: _pageController,
        children: [
          Home(),
          Search(),
          AddPost(),
          Center(
            child: Text("No Thing Yet"),
          ),
          Profile(),
        ],
      ),
    );
  }
}
