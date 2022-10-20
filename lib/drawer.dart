// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Drawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          UserAccountsDrawerHeader(
            accountName: Text(
              "Mike Banning",
              style: TextStyle(
                fontFamily: 'fira',
                fontSize: 15,
              ),
            ),
            accountEmail: Row(children: [
              Text(
                "BanningMike214@gmail.com",
                style: TextStyle(
                  fontFamily: 'fira',
                  fontSize: 15,
                ),
              ),
              SizedBox(
                width: 40,
              ),
              Image.asset(
                'lib/icons/accounticon.png',
                height: 30,
                width: 30,
              )
            ]),
            currentAccountPicture: CircleAvatar(
              backgroundImage: NetworkImage(
                  "https://cdn.justjared.com/wp-content/uploads/headlines/2020/11/gerard-butler-returns-for-fallen-movie.jpg"),
            ),
          ),
          ListTile(),
        ],
      ),
    );
  }
}
