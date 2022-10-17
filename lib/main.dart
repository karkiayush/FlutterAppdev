// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: "Programming Compiler",
    theme: ThemeData(fontFamily: 'Fira'),
    home: Homepage(),
  ));
}

// ignore: use_key_in_widget_constructors
class Homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.green,
          title: Text(
            "Programming Compiler",
            style: TextStyle(
                color: Color.fromARGB(255, 0, 0, 0), fontFamily: 'Fira'),
          )),
      body: Container(
        color: Colors.white,
        // child:,
      ),
      drawer: Drawer(
        child: ListView(
          // padding: EdgeInsets.,
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            // DrawerHeader(
            //   // ignore: sort_child_properties_last
            //   child: Text(
            //     "DashBoard",
            //     style: TextStyle(color: Colors.white, fontFamily: 'Fira'),
            //   ),
            //   decoration: BoxDecoration(color: Colors.blueGrey),
            //   // padding: EdgeInsets.all(70),
            // ),

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
            ),

            ListTile(
              leading: Icon(Icons.terminal),
              title: Text(
                "Terminal",
                style: TextStyle(
                  fontFamily: 'Fira',
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.laptop),
              title: Text(
                "Editor",
                style: TextStyle(
                  fontFamily: 'Fira',
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            ListTile(
              leading: Icon(Icons.file_copy_outlined),
              title: Text(
                "Files",
                style: TextStyle(
                  fontFamily: 'Fira',
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.search),
              title: Text(
                "Search",
                style: TextStyle(
                  fontFamily: 'Fira',
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.account_tree_rounded),
              title: Text(
                "Git",
                style: TextStyle(
                  fontFamily: 'Fira',
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.extension),
              title: Text(
                "Extension",
                style: TextStyle(
                  fontFamily: 'Fira',
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.model_training),
              title: Text(
                "Sample Code ",
                style: TextStyle(
                  fontFamily: 'Fira',
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.history),
              title: Text(
                "Recent codes",
                style: TextStyle(
                  fontFamily: 'Fira',
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  // backgroundColor: Colors.blue
                  // fontStyle: FontStyle.italic
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.workspace_premium),
              title: Text(
                "Premium",
                style: TextStyle(
                  fontFamily: 'Fira',
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text(
                "Setting",
                style: TextStyle(
                  fontFamily: 'Fira',
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
