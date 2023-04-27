import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_application_3/Screens/add_photo.dart';
import 'package:flutter_application_3/Screens/home.dart';
import 'package:flutter_application_3/Screens/profile.dart';
import 'package:flutter_application_3/Screens/search.dart';
import 'package:flutter_svg/flutter_svg.dart';

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
  Color colorb = Color.fromARGB(255, 104, 104, 104);
  int curunt = 2;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      bottomNavigationBar: CupertinoTabBar(
          backgroundColor: Colors.black,
          onTap: (index) {
            _pageController.jumpToPage(index);
            setState(() {
              curunt = index;
            });
          },
          items: [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.home_rounded,
                  color: curunt == 0 ? colora : colorb,
                ),
                label: ""),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.search,
                  color: curunt == 1 ? colora : colorb,
                ),
                label: ""),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.add_box_outlined,
                  color: curunt == 2 ? colora : colorb,
                ),
                label: ""),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.play_arrow,
                  color: curunt == 3 ? colora : colorb,
                ),
                label: ""),
            const BottomNavigationBarItem(
                icon: CircleAvatar(
                  backgroundImage: AssetImage(
                      "assets/img/WhatsApp Image 2023-04-26 at 12.38.25 PM.jpeg"),
                ),
                label: ""),
          ]),
      body: PageView(
        onPageChanged: (index) {},
        physics: NeverScrollableScrollPhysics(),
        controller: _pageController,
        children: [
          Home(),
          Search(),
          AddPost(),
          Center(
            child: Text(
              "No Thing Yet",
            ),
          ),
          Profile(),
        ],
      ),
    );
  }
}
