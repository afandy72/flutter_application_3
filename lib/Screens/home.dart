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
          backgroundColor: Colors.black,
          title: SvgPicture.asset(
            "assets/img/Instagram_logo.svg",
            width: 70,
            height: 55,
            color: Colors.white,
          ),
          actions: [
            Stack(children: [
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.favorite_border,
                    size: 30,
                  )),
              Padding(
                padding: const EdgeInsets.only(left: 30.0, top: 10),
                child: Container(
                  height: 10,
                  width: 10,
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 243, 16, 0),
                      shape: BoxShape.circle),
                ),
              ),
            ]),
            Row(
              children: [
                Padding(
                  padding:
                      const EdgeInsets.only(right: 12.0, bottom: 12, left: 12),
                  child: Stack(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 10.0),
                        child: ImageIcon(
                          AssetImage(
                              "assets/img/socialmedia-social-media-logo-facebook-messenger-icon-329837-256.png"),
                          color: Colors.white,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 15.0,
                        ),
                        child: Container(
                          child: Text(
                            "3",
                            style: TextStyle(
                                fontSize: 15,
                                color: Colors.white,
                                fontWeight: FontWeight.w500),
                          ),
                          padding: EdgeInsets.only(left: 6, top: 1),
                          height: 20,
                          width: 20,
                          decoration: BoxDecoration(
                              color: Colors.red, shape: BoxShape.circle),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ));
  }
}
