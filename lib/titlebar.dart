// ignore_for_file: camel_case_types, prefer_const_constructors

import 'package:flutter/material.dart';
import 'colors/colors.dart';

class titleBar extends StatelessWidget {
  const titleBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
        //the mainAxisAllignment space between makes the text and image apart at two opposite end of row
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
              onTap: () {},
              child: Icon(
                Icons.menu,
                color: tdBlack,
                size: 30,
              )),
          // ignore: sized_box_for_whitespace
          Container(
            height: 50,
            child: ClipRRect(
                borderRadius: BorderRadius.circular(35),
                child: Image.asset('lib/iconandimage/profileimg1.jpg')),
          )
        ]);
  }
}
