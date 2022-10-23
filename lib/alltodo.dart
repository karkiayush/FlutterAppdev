// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, camel_case_types

import 'package:flutter/material.dart';

class allToDo extends StatelessWidget {
  const allToDo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //  Needed to wrap with container so that the padding can be implemented from right side to make the text "All ToDos" to the left most part
    return Container(
      padding: EdgeInsets.fromLTRB(0, 10, 220, 0),
      child: Container(
        child: Text(
          "All ToDo",
          style: TextStyle(
            fontFamily: 'ChangaMed',
            fontSize: 30,
          ),
        ),
      ),
    );
  }
}
