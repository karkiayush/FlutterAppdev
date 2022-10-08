import 'package:flutter/material.dart';

// main is the driver program
void main(List<String> args) {
  runApp(MaterialApp(
    title: "Messenger",
    home: Homepage(),
  ));
}

class Homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Messenger")),
      body: Container(
        child: Center(child: Text("Welcome to messenger")),
      ),
    );
  }
}
