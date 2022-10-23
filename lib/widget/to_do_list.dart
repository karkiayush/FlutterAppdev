// ignore_for_file: camel_case_types, prefer_const_constructors

import 'package:flutter/material.dart';

class toDoList extends StatelessWidget {
  const toDoList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10,
      // making the edges of the card abit rounded
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
      child: TextField(
        // the decoration widget contains all of the internal things of the textfield like the search icons and the search hintText
        decoration: InputDecoration(
            // prefixicon helps in adding various icons to the textfield
            prefixIcon: Icon(
              Icons.search,
              color: Colors.black,
            ),
            // HINTTEXT IS FOR THE SEARCH TEXT THAT HAS TO BE DISPLAYED INSIDE OF THE TEXTFIELD
            border: InputBorder.none,
            hintText: 'Search',
            hintStyle: TextStyle(fontFamily: 'fira', fontSize: 20)),
      ),
    );
  }
}
