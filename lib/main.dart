// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, unnecessary_string_interpolations
import 'package:flutter/material.dart';
import 'package:todoapp/drawer.dart';
import 'package:todoapp/listview.dart';

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
  var listToDo = ['Hi, there'];

  addToDo(String item) {
    setState(() {
      listToDo.add(item);
    });
  }

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
      // body: listView(),
      body: ListView.builder(
          itemCount: listToDo.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text('${listToDo[index]}'),
            );
          }),
      drawer: DRAWER(),
      floatingActionButton: Container(
        padding: EdgeInsets.all(15),
        child: FloatingActionButton(
          onPressed: () {},
          child: Icon(Icons.add),
        ),
      ),
    );
  }
}
