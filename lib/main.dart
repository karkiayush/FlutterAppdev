// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, avoid_unnecessary_containers, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:todoapp1/colors/colors.dart';

void main(List<String> args) {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: "To do",
    home: Home(),
  ));
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    /*For making the status bar to be transparent*/
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
        statusBarColor: Colors.transparent)); //for the transparent status bar
    return Scaffold(
      backgroundColor: tdBGColor,
      appBar: AppBar(
        elevation: 0,
        toolbarHeight: 70,
        backgroundColor: tdBGColor,
        title: Row(
            //the mainAxisAllignment space between makes the text and image apart at two opposite end of row
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(Icons.menu, color: tdBlack, size: 30),
              // ignore: sized_box_for_whitespace
              Container(
                height: 50,
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(35),
                    child: Image.asset('lib/iconandimage/profileimg1.jpg')),
              )
            ]),
      ),
      body: Container(
        child: Column(children: [Container()]),
      ),
      // appBar: AppBar(
      //   backgroundColor: Colors.purple,
      //   centerTitle: true,
      //   title: Row(
      //     // ignore: prefer_const_literals_to_create_immutables
      //     children: [
      //       SizedBox(
      //         width: 60,
      //       ),
      //       Text(
      //         "List To Do",
      //         textAlign: TextAlign.center,
      //         style: TextStyle(
      //           fontFamily: 'cursive1',
      //           fontSize: 30,
      //         ),
      //       ),
      //       SizedBox(
      //         width: 100,
      //       ),
      //       Icon(Icons.dark_mode)
      //     ],
      //   ),
      // ),
/*************************************************************************************************************************/
      // drawer: Drawer(
      //   child: ListView(
      //     // ignore: prefer_const_literals_to_create_immutables
      //     children: [
      //       UserAccountsDrawerHeader(
      //         accountName: Text(
      //           "Joe Root",
      //           style: TextStyle(
      //               fontFamily: 'fira',
      //               fontSize: 15,
      //               fontWeight: FontWeight.bold),
      //         ),
      //         accountEmail: Text(
      //           "rootyjoe@gmail.com",
      //           style: TextStyle(
      //               fontFamily: 'fira',
      //               fontSize: 15,
      //               fontWeight: FontWeight.bold),
      //         ) //Row(
      //         //   // ignore: prefer_const_literals_to_create_immutables
      //         //   children: [
      //         //     Text("rootyjoe112@gmail.com"),
      //         //     Image.asset(
      //         //       "lib/icons/account1.png",
      //         //       height: 10,
      //         //       width: 10,
      //         //     )
      //         //   ],
      //         // ),
      //         ,
      //         currentAccountPicture: CircleAvatar(
      //           backgroundImage: NetworkImage(
      //               "https://www.cricbuzz.com/a/img/v1/152x152/i1/c170942/joe-root.jpg"),
      //         ),
      //       ),
      //     ],
      //   ),
      // ),
    );
  }
}
