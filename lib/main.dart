// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'dart:html';

import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "To Do",
      home: ToDoApp(),
    ));

// ignore: use_key_in_widget_constructors
class ToDoApp extends StatefulWidget {
  @override
  State<ToDoApp> createState() => _ToDoAppState();
}

class _ToDoAppState extends State<ToDoApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "To Do App",
          style: TextStyle(
              fontFamily: 'cursive1',
              fontSize: 30,
              fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          TextFormField(),
          Padding(padding: EdgeInsets.all(5))
          // ListTile(
          //   title: Text("Wake up"),
          //   leading: Icon(Icons.bed_rounded),
          // ),
          // ListTile(
          //   title: Text("Eat"),
          //   leading: Icon(Icons.dinner_dining),
          // ),
          // ListTile(
          //   title: Text("Code"),
          //   leading: Icon(Icons.computer_rounded),
          // ),
          // Row(
          //   children: [
          //     SizedBox(
          //       width: 20,
          //     ),
          //     Image.asset(
          //       'lib/icons/code.png',
          //       height: 25,
          //       width: 25,
          //     ),
          //     SizedBox(
          //       width: 20,
          //     ),
          //     Text("Code", style: TextStyle(fontFamily: 'bold1')),
          //   ],
          // ),
          ,
          Column(
            children: [
              Row(
                children: [
                  SizedBox(
                    width: 10,
                  ),
                  Image.asset(
                    'lib/icons/eat.png',
                    height: 50,
                    width: 50,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text("Eat",
                      style: TextStyle(fontFamily: 'changaMed', fontSize: 20))
                ],
              ),
              SizedBox(
                height: 9,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 10,
                  ),
                  Image.asset(
                    'lib/icons/sleep.png',
                    height: 50,
                    width: 50,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text("Sleep",
                      style: TextStyle(fontFamily: 'changaMed', fontSize: 20))
                ],
              ),
              SizedBox(
                height: 9,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 10,
                  ),
                  Image.asset(
                    'lib/icons/code.png',
                    height: 50,
                    width: 50,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text("Code",
                      style: TextStyle(fontFamily: 'changaMed', fontSize: 20))
                ],
              ),
              SizedBox(
                height: 9,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 10,
                  ),
                  Image.asset(
                    'lib/icons/repeat.png',
                    height: 50,
                    width: 50,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text("Repeat",
                      style: TextStyle(fontFamily: 'changaMed', fontSize: 20))
                ],
              ),
            ],
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
                accountName: Text("Mike Banning"),
                accountEmail: Text("BanningMike214@gmail.com")),
            ListTile(),
          ],
        ),
      ),
    );
  }
}
