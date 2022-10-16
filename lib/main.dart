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

// ignore: use_key_in_widget_constructors
class Homepage extends StatelessWidget {
  // ignore: annotate_overrides
  Widget build(BuildContext context) {
    return Scaffold(
      // ignore: prefer_const_constructors
      appBar: AppBar(title: Text("Personal Infomation")),

      // ignore: avoid_unnecessary_containers
      body: Padding(
        padding: const EdgeInsets.all(10.0),

        // To move the container in any position, we need to use the wrap container with Allign widget
        child: Align(
          // alignment: AlignmentGeometry.,
          child: Container(
            // This line of codes gives the whole screen to the Row
            height: 320,
            width: 100,

            // So if we give the color to the container then whole background color will be black
            color: Colors
                .blueGrey, //IF we comment out the above media query syntax then only the first row's background color will be greyish

            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                // "spacebetween" : creates the gap between the container box, but don't leaves the space between the border and side containers

                //spacearound : spacebetween + space in the side container as well

                //spaceEvenly : leaves equal space between the all of the containers
                mainAxisAlignment: MainAxisAlignment.start,

                /*THE BELOW CROSS AXIS ALLIGNMENT FOR CENTER AND END DOESN'T WORK SINCE THE ROW WILL BE APPLIED ONLY FOR THE TOP OF THE TOP OF THE SCAFFOLD WHEN WE DON'T WRAP THE ROW WITH CENTER */

                // crossAxisAlignment: CrossAxisAlignment.end,

                // crossAxisAlignment: CrossAxisAlignment.center,

                crossAxisAlignment: CrossAxisAlignment.center,

                children: [
                  // First container
                  Container(
                    // ignore: prefer_const_constructors
                    padding: EdgeInsets.all(0),
                    height: 100,
                    width: 100,
                    color: Colors.black,
                  ),

                  // Second container
                  Container(
                    // ignore: prefer_const_constructors
                    padding: EdgeInsets.all(0),
                    height: 100,
                    width: 100,
                    color: Color.fromARGB(255, 232, 181, 16),
                  ),

                  // Third container
                  Container(
                    // ignore: prefer_const_constructors
                    padding: EdgeInsets.all(0),
                    height: 100,
                    width: 100,
                    color: Colors.purple,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
