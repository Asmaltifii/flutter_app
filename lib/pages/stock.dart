// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/about.dart';
import 'package:flutter_application_1/pages/home.dart';
import 'package:flutter_application_1/pages/inventaire.dart';
import 'package:flutter_application_1/pages/welcom.dart';

class Stock extends StatelessWidget {
  const Stock({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        drawer: Drawer(
          child: Column(
            children: [
              UserAccountsDrawerHeader(
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/images/ae.jpg"),
                      fit: BoxFit.cover),
                ),
                accountName: Text(""),
                accountEmail: Text(""),
                currentAccountPicture: CircleAvatar(
                  radius: 55,
                  backgroundImage: AssetImage("assets/images/energia.png"),
                ),
              ),
              ListTile(
                title: Text("Home"),
                leading: Icon(Icons.home),
                onTap: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => Home()));
                },
              ),
              ListTile(
                title: Text("Inventory"),
                leading: Icon(Icons.inventory_outlined),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Inventaire()));
                },
              ),
              ListTile(
                title: Text("Stocks"),
                leading: Icon(Icons.storage),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Stock()));
                },
              ),
              ListTile(
                title: Text("About"),
                leading: Icon(Icons.help_center),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => About()));
                },
              ),
              ListTile(
                title: Text("Log out"),
                leading: Icon(Icons.exit_to_app),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Welcome()));
                },
              ),
            ],
          ),
        ),
        appBar: AppBar(
          backgroundColor: Colors.red[300],
          title: Text(
            "Stocks",
            style: TextStyle(
                fontWeight: FontWeight.w400, fontSize: 35, fontFamily: "font"),
          ),
        ),
        body: Column(
          children: [
            SizedBox(height: 30),
            Text(
              "Artical References ",
              style: TextStyle(fontFamily: "font", fontSize: 30),
            ),
            TextField(
              keyboardType: TextInputType.number,
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              "Quantity stored: ",
              style: TextStyle(fontFamily: "font", fontSize: 30),
            ),
            TextField(
              keyboardType: TextInputType.number,
            ),
            SizedBox(height: 30),
            Text(
              "Inventory Quantity :",
              style: TextStyle(fontFamily: "font", fontSize: 30),
            ),
            TextField(
              keyboardType: TextInputType.number,
            ),
            SizedBox(height: 100),
            Row(
              children: [
                SizedBox(width: 40),
                ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    "Valid",
                    style: TextStyle(fontSize: 30, color: Colors.red[300]),
                  ),
                ),
                SizedBox(
                  width: 50,
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    "Cancel",
                    style: TextStyle(fontSize: 30, color: Colors.grey[600]),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
