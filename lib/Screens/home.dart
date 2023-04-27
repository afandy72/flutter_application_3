import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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
                    const EdgeInsets.only(right: 12.0, bottom: 20, left: 12),
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
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 15.0, top: 12),
            child: Row(
              children: [
                CircleAvatar(
                  backgroundImage:
                      AssetImage("assets/img/road-1072821_960_720.jpg"),
                ),
                SizedBox(
                  width: 17,
                ),
                Text(
                  "user_name",
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
                ),
                Spacer(),
                IconButton(onPressed: () {}, icon: Icon(Icons.more_vert))
              ],
            ),
          ),
          SizedBox(
            height: 12,
          ),
          Row(
            children: [
              Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 25.0),
                    child: CircleAvatar(
                      radius: 12,
                      backgroundImage: AssetImage(
                        "assets/img/road-1072821_960_720.jpg",
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 12.0),
                    child: CircleAvatar(
                      radius: 12,
                      backgroundImage: AssetImage(
                        "assets/img/WhatsApp Image 2023-04-26 at 12.38.25 PM.jpeg",
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                margin: EdgeInsets.fromLTRB(10, 5, 5, 5),
                child: Text(
                  " Liked by user_name2 and 55 others ",
                  style: TextStyle(fontSize: 15),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Row(
              children: [
                Text(
                  "user_name  Natural",
                  style: TextStyle(fontSize: 17),
                )
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(12, 0, 5, 5),
            width: double.infinity,
            child: Text(
              "View all 23 comments",
              style: TextStyle(
                  color: Color.fromARGB(255, 124, 124, 124), fontSize: 15),
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(12, 10, 5, 5),
            width: double.infinity,
            child: Text(
              "user_name2  Beautiful",
              style: TextStyle(color: Colors.white, fontSize: 15),
            ),
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 30.0, top: 7),
                child: Container(
                  height: 25,
                  width: 2,
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 124, 124, 124),
                      shape: BoxShape.rectangle),
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(12, 10, 5, 5),
                child: Text(
                  "user_name  Thanks",
                  style: TextStyle(color: Colors.white, fontSize: 15),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 25.0, top: 2),
            child: Row(
              children: [
                CircleAvatar(
                  radius: 12,
                  backgroundImage: AssetImage(
                    "assets/img/WhatsApp Image 2023-04-26 at 12.38.25 PM.jpeg",
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(12, 10, 5, 5),
                  child: Text(
                    " Add a comment...",
                    style: TextStyle(
                        color: Color.fromARGB(255, 124, 124, 124),
                        fontSize: 15),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10.0, top: 2),
            child: Row(
              children: [
                Container(
                  margin: EdgeInsets.fromLTRB(0, 10, 5, 5),
                  child: Text(
                    "2 days ago  .  ",
                    style: TextStyle(
                        color: Color.fromARGB(255, 124, 124, 124),
                        fontSize: 13),
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(0, 10, 5, 5),
                  child: Text(
                    "See translation",
                    style: TextStyle(color: Colors.white, fontSize: 13),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
