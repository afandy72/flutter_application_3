import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Row(
          children: [
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.arrow_back,
                  color: Colors.black,
                )),
            Spacer(),
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.search,
                  color: Colors.black,
                ))
          ],
        ),
      ),
      body: ListView.builder(itemBuilder: (context, index) {
        return Padding(
          padding: EdgeInsets.all(8.0),
          child: Container(
            padding: EdgeInsets.only(top: 24,bottom: 12),
            child:
             Column(crossAxisAlignment: CrossAxisAlignment.end, children: [
                ListTile(
                  title: Text(
                    'Tips',
                    style: TextStyle(color: Colors.black, fontSize: 26),
                  ),
                  subtitle: Padding(
                    padding:
                        const EdgeInsets.only(left: 14, top: 16, bottom: 16),
                    child: Text('build your notes',
                        style: TextStyle(color: Colors.black, fontSize: 20)),
                  ),
                  trailing: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.delete,
                      color: Colors.black,
                      size: 35,
                    ),
                  ),
                )],
          ),
        ),
      );
      bottomNavigationBar: CupertinoTabBar(
          backgroundColor: Colors.black,
          onTap: (index) {},
          items: [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.home_rounded,
                ),
                label: ""),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.calendar_month,
                ),
                label: ""),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.add,
                ),
                label: ""),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.search,
                ),
                label: ""),]
      );   
      ));}
  }
}
