// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, unnecessary_string_interpolations, unused_import
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
  late String value;
//TO MAKE THE DYNAMIC TO DO APP
  var listToDo = ['', 'code', 'repeat'];
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
        body: ListView.builder(
            itemCount: listToDo.length,
            itemBuilder: (context, index) {
              return index == 0
                  ? Padding(
                      padding: const EdgeInsets.all(14.0),
                      child: TextFormField(),
                    )
                  : ListTile(
                      leading: Icon(Icons.numbers),
                      title: Text(
                        '${listToDo[index]}',
                        style: TextStyle(
                            fontFamily: 'fira', fontWeight: FontWeight.bold),
                      ),
                    );
            }),
        floatingActionButton:
            FloatingActionButton(onPressed: () {}, child: Icon(Icons.add)));
  }
}
