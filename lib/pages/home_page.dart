// ignore_for_file: prefer_const_constructors

import 'package:firstapp/bg_image.dart';
import 'package:firstapp/drawer.dart';
import 'package:flutter/material.dart';

// ignore: use_key_in_widget_constructors
class Homepage extends StatefulWidget {
  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  // ignore: unused_field, prefer_final_fields
  TextEditingController _titleController = TextEditingController();

  var myText = "List your task to do";
  @override
  void initState() {
    // ignore: todo
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey,
        appBar: AppBar(
          title: Text(
            "To do list",
            style: TextStyle(fontFamily: "fira"),
          ),
          backgroundColor: Colors.green,
          centerTitle: true,
        ),
        body: Center(
            child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Card(
              color: Colors.white,
              // borderOnForeground: false,

              // It controls the shadow size below the card. The bigger elevation value makes the bigger shadow distance.
              elevation: 5,
              margin: EdgeInsets.zero,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25)),
// It is used to paint the shadow of a card.
              shadowColor: Colors.green,
              clipBehavior: Clip.hardEdge,
              child: toDOTitle(titleController: _titleController)),
        )),
        drawer: MyDrawer(),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: Icon(Icons.refresh),
        ));
  }
}

// ignore: camel_case_types
class toDOTitle extends StatelessWidget {
  const toDOTitle({
    Key? key,
    required TextEditingController titleController,
  })  : _titleController = titleController,
        super(key: key);

  final TextEditingController _titleController;

  @override
  Widget build(BuildContext context) {
    return Column(
      // ignore: prefer_const_literals_to_create_immutables
      children: <Widget>[
        bgImage(),
        //this below sized box doesn't seems but helps in giving space in between two widgest. Here it makes the space between the image and the Text("to do list ")
        SizedBox(
          height: 20,
        ),
        Row(
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            SizedBox(
              width: 95,
            ),
            Text(
              "List your task to do",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: 'cursive2',
                fontWeight: FontWeight.bold,
                fontSize: 23,
              ),
            ),
            SizedBox(
              width: 80,
            ),
            Icon(Icons.note_alt_sharp)
          ],
        ),
        SizedBox(
          height: 20,
        ),
        Container(
          // ignore: sort_child_properties_last
          child: Text(
            "Note task",
            style: TextStyle(
              fontFamily: 'fira',
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
          color: Colors.blueAccent,
        ),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: TextField(
            controller: _titleController,
            keyboardType: TextInputType.text,
            decoration: InputDecoration(
              hintText: "Enter things to do",
              border: OutlineInputBorder(),
              // labelText: "Task"
            ),
          ),
        )
      ],
    );
  }
}
