// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final imageurl =
        "https://media.vanityfair.com/photos/63068cbbbfb0c00da24590fe/master/pass/Luke-MacFarlane-Profile-Story-Image.jpg";
    return Drawer(
      child: Container(
        color: Colors.deepPurple,
        child: ListView(
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            DrawerHeader(
                padding: EdgeInsets.zero,
                child: UserAccountsDrawerHeader(
                  margin: EdgeInsets.zero,
                  accountName: Text("Shahbaz Ali"),
                  accountEmail: Text("shahbazalivk@gmail.com"),
                  currentAccountPicture: CircleAvatar(
                      // backgroundImage: NetworkImage(imageurl),
                      ),
                )),
            ListTile(
              iconColor: Colors.white,
              textColor: Colors.white,
              leading: Icon(CupertinoIcons.home),
              title: Text("Home"),
            ),
            ListTile(
              iconColor: Colors.white,
              textColor: Colors.white,
              leading: Icon(CupertinoIcons.profile_circled),
              title: Text("Profile"),
            ),
            ListTile(
              iconColor: Colors.white,
              textColor: Colors.white,
              leading: Icon(CupertinoIcons.mail),
              title: Text("Email me"),
            )
          ],
        ),
      ),
    );
  }
}
