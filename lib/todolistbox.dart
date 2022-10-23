// ignore_for_file: prefer_const_constructors, camel_case_types, avoid_print

import 'package:flutter/material.dart';

class toDoListBox extends StatelessWidget {
  const toDoListBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //Making the list of the to items
    return Padding(
      padding: const EdgeInsets.all(16.0),

      // Making the container of the to do items
      child: GestureDetector(
        //gesture director is added so that we can add the on tap properties, in place of the gesture director we can also use the InkWell prop
        onTap: () {
          print("pressed on the container");
        },
        child: Card(
          child: Container(
            height: 50,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                color: Colors.white,
                // boxShadow: [
                //   BoxShadow(
                //       color: Colors.grey,
                //       offset: const Offset(
                //         2.0,
                //         2.0,
                //       ))
                // ],
                borderRadius: BorderRadius.all(Radius.circular(20))),

            // For the icons of the checkbox in the container
            child: Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 300, 0),
              child: Icon(
                Icons.check_box_outlined,
                color: Colors.blue,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
