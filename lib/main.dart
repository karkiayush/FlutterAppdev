// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: "To do list",
    home: Homepage(),
  ));
}

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
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
// It is used to paint the shadow of a card.
            shadowColor: Colors.green,
            clipBehavior: Clip.hardEdge,
            child: Column(
              // ignore: prefer_const_literals_to_create_immutables
              children: <Widget>[
                Image.asset("assets/bg3.jpg"),
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
            ),
          ),
        )),

        // body: Column(
        //   children: [
        //     Container(
        //       height: MediaQuery.of(context).size.height / 8,
        //       width: MediaQuery.of(context).size.width / 8,
        //       color: Colors.white,
        //     ),
        //     Container(
        //       height: MediaQuery.of(context).size.height / 8,
        //       width: MediaQuery.of(context).size.width / 8,
        //       color: Colors.black,
        //     ),
        //     Container(
        //       height: MediaQuery.of(context).size.height / 8,
        //       width: MediaQuery.of(context).size.width / 8,
        //       color: Colors.white,
        //     ),
        //     Container(
        //       height: MediaQuery.of(context).size.height / 8,
        //       width: MediaQuery.of(context).size.width / 8,
        //       color: Colors.black,
        //     ),
        //     Container(
        //       height: MediaQuery.of(context).size.height / 8,
        //       width: MediaQuery.of(context).size.width / 8,
        //       color: Colors.white,
        //     ),
        //     Container(
        //       height: MediaQuery.of(context).size.height / 8,
        //       width: MediaQuery.of(context).size.width / 8,
        //       color: Colors.black,
        //     ),
        //     Container(
        //       height: MediaQuery.of(context).size.height / 8,
        //       width: MediaQuery.of(context).size.width / 8,
        //       color: Colors.white,
        //     ),
        //   ],
        // ),
        drawer: Drawer(
          // ignore: prefer_const_literals_to_create_immutables
          child: ListView(children: [
            SizedBox(
              height: 160,
              // width: 100,
              child: UserAccountsDrawerHeader(
                accountName: Text("Prezwol Rana"),
                accountEmail: Text("ranaprezwol299@gmail.com"),
                currentAccountPicture: CircleAvatar(
                    backgroundImage: NetworkImage(
                        "https://images.unsplash.com/photo-1615109398623-88346a601842?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80")),
                // decoration: BoxDecoration(borderRadius:)),
              ),
            ),
            ListTile(
              leading: Icon(Icons.account_balance_outlined),
              title: Text("Account Information"),
              trailing: Icon(Icons.edit),
            ),
            ListTile(
              leading: Icon(Icons.data_exploration_sharp),
              title: Text("Transaction"),
            ),
            ListTile(
              leading: Icon(Icons.account_balance_outlined),
              title: Text(""),
            ),
            ListTile(
              leading: Icon(Icons.account_balance_outlined),
              title: Text("Account Information"),
            ),
            ListTile(
              leading: Icon(Icons.account_balance_outlined),
              title: Text("Account Information"),
            ),
          ]),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: Icon(Icons.refresh),
        ));
  }
}
