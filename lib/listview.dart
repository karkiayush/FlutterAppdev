// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

// ignore: use_key_in_widget_constructors, camel_case_types
class listView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(13.0),
      child: Card(
        elevation: 10,
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextFormField(),
            ),
            // Padding(padding: EdgeInsets.all(5)),
            ListTile(
              title: Text(
                "Eat",
                style: TextStyle(fontFamily: 'changaMed', fontSize: 20),
              ),
              leading: Image.asset(
                'lib/icons/eat.png',
                height: 40,
                width: 40,
              ),
            ),
            ListTile(
              title: Text(
                "Sleep",
                style: TextStyle(fontFamily: 'changaMed', fontSize: 20),
              ),
              leading: Image.asset(
                'lib/icons/sleep.png',
                height: 40,
                width: 40,
              ),
            ),
            ListTile(
              title: Text(
                "Code",
                style: TextStyle(fontFamily: 'changaMed', fontSize: 20),
              ),
              leading: Image.asset(
                'lib/icons/code.png',
                height: 40,
                width: 40,
              ),
            ),
            ListTile(
              title: Text(
                "Repeat",
                style: TextStyle(fontFamily: 'changaMed', fontSize: 20),
              ),
              leading: Image.asset(
                'lib/icons/repeat.png',
                height: 40,
                width: 40,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
