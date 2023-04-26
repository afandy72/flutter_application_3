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
            width: 150,
            color: Colors.white,
          ),
          actions: [
            IconButton(onPressed: () {}, icon: Icon(Icons.favorite_border)),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 12.0),
                  child: Stack(
                    children: [
                      Container(
                        child: Text(
                          "4",
                          style: TextStyle(
                              fontSize: 18,
                              color: Colors.white,
                              fontWeight: FontWeight.w600),
                        ),
                        padding: EdgeInsets.all(
                          4,
                        ),
                        height: 20,
                        width: 20,
                        decoration: BoxDecoration(
                            color: Colors.red, shape: BoxShape.circle),
                      ),
                      ImageIcon(AssetImage(
                          "assets/img/socialmedia-social-media-logo-facebook-messenger-icon-329837-256.png")),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ));
  }
}
