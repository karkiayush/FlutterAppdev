// ignore_for_file: prefer_const_constructors, camel_case_types, avoid_print, sized_box_for_whitespace, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers

import 'package:flutter/material.dart';

class toDoListBox extends StatelessWidget {
  const toDoListBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //Making the list of the to items
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 0, 16, 3),

      // Making the container of the to do items
      child: GestureDetector(
        //gesture director is added so that we can add the on tap properties, in place of the gesture director we can also use the InkWell prop
        onTap: () {
          print("pressed on the container");
        },
        child: Card(
          child: Container(
            height: 50,
            child: Row(
              children: [
                SizedBox(
                  width: 10,
                ),
                Icon(
                  Icons.check_circle_outlined,
                  color: Colors.blue,
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(15, 0, 0, 0),
                  child: Text('Check email',
                      style: TextStyle(fontFamily: 'fira', fontSize: 20,)),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(150, 0, 0, 0),
                  child: GestureDetector(
                      onTap: () {
                        print("to do are deleted");
                      },
                      child: Container(
                        child: Icon(
                          Icons.delete,
                          color: Colors.black,
                          size: 25,
                        ),
                      )),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
