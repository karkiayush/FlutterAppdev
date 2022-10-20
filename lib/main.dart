// ignore_for_file: prefer_const_constructors
import 'package:firstapp/pages/home_page.dart';
import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: "To do list",
    home: Homepage(),
  ));
}
