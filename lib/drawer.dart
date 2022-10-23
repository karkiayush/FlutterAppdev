// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class DRAWER extends StatelessWidget {
  const DRAWER({Key? key, required ListView child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: ListView(
            // padding: EdgeInsets.,
            // ignore: prefer_const_literals_to_create_immutables
            children: [
          UserAccountsDrawerHeader(
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.all(Radius.circular(30)),
            ),
            accountName: Text(
              "Aayush Karki",
              style: TextStyle(
                fontFamily: 'bold1',
              ),
            ),
            accountEmail: Row(
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                Text(
                  "KarkiAayush499@gmail.com",
                  style: TextStyle(
                    fontFamily: 'bold1',
                  ),
                ),
                // Icon(Icons.edit_outlined)
                IconButton(
                  icon: const Icon(Icons.edit_outlined),
                  color: Colors.white,
                  padding: EdgeInsets.only(left: 50),
                  onPressed: () {},
                ),
              ],
            ),
            currentAccountPicture: CircleAvatar(
              backgroundImage: NetworkImage(
                  "https://images.unsplash.com/photo-1551434678-e076c223a692?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80"),
            ),
          )
        ]));
  }
}
