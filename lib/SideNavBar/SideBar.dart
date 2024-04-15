// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:plas_track/NGO/MapPage.dart';
import 'package:plas_track/NGO/PaymentPage.dart';

class SideBar extends StatefulWidget {
  const SideBar({super.key});

  @override
  State<SideBar> createState() => _SideBarState();
}

class _SideBarState extends State<SideBar> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Container(
              width: double.infinity,
              height: 300,
              padding: EdgeInsets.all(20),
              color: Colors.black,
              child: Center(
                  child: Text("Logged In",
                      style: TextStyle(color: Colors.white, fontSize: 40)))),
          ListTile(
              leading: Icon(Icons.home),
              title: Text('Home'),
              onTap: () {
                Navigator.pop(context);
              }),
          ListTile(
            leading: Icon(Icons.map),
            title: Text("View Maps"),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => MapPage()),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.design_services),
            title: Text("NGO Portal"),
            onTap: () {
              // Navigator.push(
              //   context,
              //   MaterialPageRoute(builder: (context) => FrontScreen()),
              // );
            },
          ),
          ListTile(
            leading: Icon(Icons.arrow_back),
            title: Text("Log Out"),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Paymentpage()),
              );
            },
          )
        ],
      ),
    );
  }
}
