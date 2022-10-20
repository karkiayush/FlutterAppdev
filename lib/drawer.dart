// ignore_for_file: prefer_const_constructors
// SRC CODE FOR THE DRAWER
import 'package:flutter/material.dart';

// ignore: camel_case_types, use_key_in_widget_constructors
class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
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
    );
  }
}
