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
          Image.asset(
              "assets/img/299850199_439821258168815_7602401598176668923_n.jpg"),
          SizedBox(
            width: 12,
          ),
          Row(
            children: [
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.favorite_border_outlined,
                    size: 28,
                  )),
              SizedBox(
                width: 3,
              ),
              new Icon(
                FontAwesomeIcons.comment,
              ),
              SizedBox(
                width: 12,
              ),
              new Icon(
                FontAwesomeIcons.paperPlane,
              ),
              SizedBox(
                width: 75,
              ),
              Container(
                height: 8,
                width: 8,
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 29, 38, 163),
                    shape: BoxShape.circle),
              ),
              SizedBox(
                width: 5,
              ),
              Container(
                height: 8,
                width: 8,
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 58, 58, 58),
                    shape: BoxShape.circle),
              ),
              SizedBox(
                width: 5,
              ),
              Container(
                height: 8,
                width: 8,
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 58, 58, 58),
                    shape: BoxShape.circle),
              ),
              SizedBox(
                width: 160,
              ),
              new Icon(
                FontAwesomeIcons.bookmark,
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(right: 200.0),
            child: Text("10 like"),
          )
        ],
      ),
    );
  }
}
