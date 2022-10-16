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

// Row and Columns in dart
import 'package:flutter/material.dart';

void main(List<String> args) {
  // ignore: prefer_const_constructors
  runApp(MaterialApp(
    title: "Personal Information",
    home: Homepage(),
  ));
}

class Homepage extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      // ignore: prefer_const_constructors
      appBar: AppBar(title: Text("Personal Infomation")),

      body: Center(
        child: Row(
          // "spacebetween" : creates the gap between the container box, but don't leaves the space between the border and side containers

          //spacearound : spacebetween + space in the side container as well

          //spaceEvenly : leaves equal space between the all of the containers
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            // First container
            Container(
              // ignore: prefer_const_constructors
              padding: EdgeInsets.all(0),
              height: 100,
              width: 100,
              color: Colors.red,
            ),

            // Second container
            Container(
              // ignore: prefer_const_constructors
              padding: EdgeInsets.all(0),
              height: 100,
              width: 100,
              color: Colors.yellow,
            ),

            // Third container
            Container(
              // ignore: prefer_const_constructors
              padding: EdgeInsets.all(0),
              height: 100,
              width: 100,
              color: Colors.green,
            ),
          ],
        ),
      ),
    );
  }
}
