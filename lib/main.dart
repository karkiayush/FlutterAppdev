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
      appBar: AppBar(title: const Text("Messenger")),
      body: Center(
        child: Container(
          alignment: Alignment.center,
          padding: const EdgeInsets.all(14),
          // color: Colors.greenAccent,
          width: 100,
          height: 100,
          decoration: const BoxDecoration(
            color: Colors.greenAccent,
            boxShadow: [
              BoxShadow(
                  color: Colors.grey,
                  blurRadius: 50,
                  spreadRadius: 6,
                  offset: Offset(2.0, 10.0))
            ],
            gradient: LinearGradient(colors: [
              Colors.yellowAccent,
              Color.fromARGB(255, 102, 97, 98)
            ]),
            shape: BoxShape.circle,
          ),

          child: const Text(
            "Messenger",
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
