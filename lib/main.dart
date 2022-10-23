// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, avoid_unnecessary_containers, prefer_const_literals_to_create_immutables, avoid_print
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:todoapp1/colors/colors.dart';

void main(List<String> args) {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: "To do",
    home: Home(),
  ));
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    /*For making the status bar to be transparent*/
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
        statusBarColor: Colors.transparent)); //for the transparent status bar
    return Scaffold(
      backgroundColor: tdBGColor,
      appBar: AppBar(
        elevation: 0,
        toolbarHeight: 70,
        backgroundColor: tdBGColor,
        title: Row(
            //the mainAxisAllignment space between makes the text and image apart at two opposite end of row
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(Icons.menu, color: tdBlack, size: 30),
              // ignore: sized_box_for_whitespace
              Container(
                height: 50,
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(35),
                    child: Image.asset('lib/iconandimage/profileimg1.jpg')),
              )
            ]),
      ),
      //Body itself is container
      body: Container(
        //container accepts the child widget and inside of which we want the column
        child: Column(
          // The column accepts the various widget and places them in the stack one after another so accepts "children"
          children: [
            // inside of the children we want the elements to be stacked
            Column(
              children: [
                Container(
                  // Textfield is wrapped with padding
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    // Wrapping up the textfield by the card
                    child: Card(
                      elevation: 10,
                      // making the edges of the card abit rounded
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(40)),
                      child: TextField(
                        // the decoration widget contains all of the internal things of the textfield like the search icons and the search hintText
                        decoration: InputDecoration(
                            // prefixicon helps in adding various icons to the textfield
                            prefixIcon: Icon(
                              Icons.search,
                              color: Colors.black,
                            ),
                            // HINTTEXT IS FOR THE SEARCH TEXT THAT HAS TO BE DISPLAYED INSIDE OF THE TEXTFIELD
                            border: InputBorder.none,
                            hintText: 'Search',
                            hintStyle:
                                TextStyle(fontFamily: 'fira', fontSize: 20)),
                      ),
                    ),
                  ),
                )
              ],
            ),

            // Column is for stacking
            Column(
              children: [
                // Needed to wrap with container so that the padding can be implemented from right side to make the text "All ToDos" to the left most part
                Container(
                  padding: EdgeInsets.fromLTRB(0, 0, 200, 0),
                  child: Container(
                    child: Text(
                      "All ToDos",
                      style: TextStyle(
                        fontFamily: 'ChangaMed',
                        fontSize: 30,
                      ),
                    ),
                  ),
                ),

                //Making the list of the to items
                Padding(
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
                            borderRadius:
                                BorderRadius.all(Radius.circular(20))),

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
                )
              ],
            ),
          ],
        ),
      ),
      // body: Container(
      //   child: Column(
      //     children: [
      //       Padding(
      //         padding: const EdgeInsets.symmetric(horizontal: 10),
      //         child: Container(
      //           decoration: BoxDecoration(
      //               color: Colors.white,
      //               borderRadius: BorderRadius.circular(20)),
      //           child: Padding(
      //             padding: const EdgeInsets.all(8.0),
      //             child: TextField(
      //               decoration: InputDecoration(
      //                   contentPadding: EdgeInsets.all(15),
      //                   prefixIcon: Icon(
      //                     Icons.search,
      //                     color: Colors.black,
      //                     size: 25,
      //                   ),
      //                   prefixIconConstraints:
      //                       BoxConstraints(maxHeight: 20, minWidth: 20),
      //                   border: InputBorder.none,
      //                   hintText: "search",
      //                   hintStyle:
      //                       TextStyle(fontFamily: 'fira', color: tdGrey)),
      //             ),
      //           ),
      //         ),
      //       ),
      //       // ListView(
      //       //   children: [Text("All ToDos")],
      //       // )
      //     ],
      //   ),
      // ),
      // appBar: AppBar(
      //   backgroundColor: Colors.purple,
      //   centerTitle: true,
      //   title: Row(
      //     // ignore: prefer_const_literals_to_create_immutables
      //     children: [
      //       SizedBox(
      //         width: 60,
      //       ),
      //       Text(
      //         "List To Do",
      //         textAlign: TextAlign.center,
      //         style: TextStyle(
      //           fontFamily: 'cursive1',
      //           fontSize: 30,
      //         ),
      //       ),
      //       SizedBox(
      //         width: 100,
      //       ),
      //       Icon(Icons.dark_mode)
      //     ],
      //   ),
      // ),
/*************************************************************************************************************************/
      // drawer: Drawer(
      //   child: ListView(
      //     // ignore: prefer_const_literals_to_create_immutables
      //     children: [
      //       UserAccountsDrawerHeader(
      //         accountName: Text(
      //           "Joe Root",
      //           style: TextStyle(
      //               fontFamily: 'fira',
      //               fontSize: 15,
      //               fontWeight: FontWeight.bold),
      //         ),
      //         accountEmail: Text(
      //           "rootyjoe@gmail.com",
      //           style: TextStyle(
      //               fontFamily: 'fira',
      //               fontSize: 15,
      //               fontWeight: FontWeight.bold),
      //         ) //Row(
      //         //   // ignore: prefer_const_literals_to_create_immutables
      //         //   children: [
      //         //     Text("rootyjoe112@gmail.com"),
      //         //     Image.asset(
      //         //       "lib/icons/account1.png",
      //         //       height: 10,
      //         //       width: 10,
      //         //     )
      //         //   ],
      //         // ),
      //         ,
      //         currentAccountPicture: CircleAvatar(
      //           backgroundImage: NetworkImage(
      //               "https://www.cricbuzz.com/a/img/v1/152x152/i1/c170942/joe-root.jpg"),
      //         ),
      //       ),
      //     ],
      //   ),
      // ),
    );
  }
}
