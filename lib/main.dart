// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, avoid_unnecessary_containers, prefer_const_literals_to_create_immutables, avoid_print
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:todoapp1/alltodo.dart';
import 'package:todoapp1/colors/colors.dart';
import 'package:todoapp1/titlebar.dart';
import 'package:todoapp1/todolistbox.dart';
import 'package:todoapp1/widget/to_do_list.dart';

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
        title: titleBar(), //titlebar;s code is organized
      ),
      //Body itself is container
      body: Container(
        //container accepts the child widget and inside of which we want the column
        child: Column(
          // The column accepts the various widget and places them in the stack one after another so accepts "children"
          children: [
            // inside of the children we want the elements to be stacked
            Column(
              children: [
                Container(
                  // Textfield is wrapped with padding
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: toDoList(),
                  ),
                )
              ],
            ),

            // Column is for stacking
            Column(
              children: [allToDo(), toDoListBox()],
            ),
          ],
        ),
      ),
    );
  }
}
