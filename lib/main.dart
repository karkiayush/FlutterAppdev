/*// Here I learned about the material drawer, List view and circle avatar & Floating action buttons
import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MaterialApp(
    title: "Cosmos App",
    home: Homepage(),
    theme: ThemeData(
      // Swatch is the collection of colors in material design that takes the colors and automatically makes the design colorful and add up the extra beauty to the design
      primarySwatch: Colors.brown,
    ),
  ));
}

// ignore: use_key_in_widget_constructors
class Homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Cosmos App"),
      ),

      // DESIGNING THE FLOATING ACTION BUTTON
      body: Container(),

      // to add the drawer icon indicated by three small parallel lines and the below code must be located inside of " return scaffold ()"
      drawer: Drawer(
        child: ListView(
          //padding makes the drawer colors to reach the top position
          padding: EdgeInsets.zero,

          children: const <Widget>[
            // DrawerHeader(
            //   // ignore: sort_child_properties_last
            //   child: Text(
            //     "Dashboard",
            //     style: TextStyle(color: Colors.white),
            //   ),
            //   decoration: BoxDecoration(color: Colors.blueAccent),
            // ),

            UserAccountsDrawerHeader(
              accountName: Text("Aayush Karki"),
              accountEmail: Text("Akrk213@gmail.com"),
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage(
                    "https://images.unsplash.com/photo-1500648767791-00dcc994a43e?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80"),
              ),
            ),

            ListTile(
              leading: Icon(Icons.person),
              title: Text("Account"),
              subtitle: Text("personal"),
              trailing: Icon(Icons.edit),
            ),
            ListTile(
              leading: Icon(Icons.email),
              title: Text("Result"),
            ),
            ListTile(
              title: Text("Records"),
              leading: Icon(Icons.app_registration_rounded),
            ),
          ],
        ),
      ),

      //floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat, // makes the icon position on the center of buttom
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        // ignore: sort_child_properties_last
        child: const Icon(
          Icons.edit,
        ),
        // mini makes the icons smaller
        mini: true,
      ),
    );
  }
}
*/

// Src code of practise of chapter where I learned about the drawer, list view, circle avatar and the floating action button

import 'package:flutter/material.dart';

void main(List<String> args) {
  // ignore: prefer_const_constructors
  runApp(MaterialApp(
    title: "Online Attendance",
    home: Homepage(),
    theme: ThemeData.light().copyWith(textTheme: const TextTheme()),
  ));
}

class Homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // ignore: prefer_const_constructors
        title: Center(
          child: const Text(
            "Online Attendance",
            style: TextStyle(
                color: Colors.white,
                fontStyle: FontStyle.normal,
                fontFamily: 'Fira'),
          ),
        ),
      ),
      body: Container(),
      drawer: Drawer(
        child: ListView(
          children: const <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text("Steven Smith"),
              accountEmail: Text("smithysteven49@gmail.com"),
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage(
                    "https://images.unsplash.com/photo-1599842057874-37393e9342df?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80"),
              ),
            ),
            ListTile(
              title: Text("Present record"),
              leading: Icon(Icons.computer),
              subtitle: Text("days"),
            ),
            ListTile(
              leading: Icon(Icons.event_available),
              title: Text("Absent record"),
              subtitle: Text("days"),
            ),
            ListTile(
              leading: Icon(Icons.assessment),
              title: Text("Results"),
            ),
            ListTile(
              title: Text("Assignments"),
              leading: Icon(Icons.assignment),
            ),
            ListTile(
              title: Text("Contact with Administration "),
              leading: Icon(Icons.contact_phone),
            ),
            ListTile(
              leading: Icon(Icons.account_circle),
              title: Text("Manage your google account"),
              subtitle: Text(
                "more",
                style: TextStyle(fontWeight: FontWeight.w600),
              ),
            )
          ],
        ),
      ),
    );
  }
}
