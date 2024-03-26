// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/about.dart';
import 'package:flutter_application_1/pages/home.dart';
import 'package:flutter_application_1/pages/stock.dart';
import 'package:flutter_application_1/pages/welcom.dart';

class Inventaire extends StatelessWidget {
  const Inventaire({super.key});

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
                accountEmail: Text("@"),
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
            "Inventory",
            style: TextStyle(
                fontWeight: FontWeight.w400, fontSize: 35, fontFamily: "font"),
          ),
        ),
        body: SizedBox(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "Inventory RFID :",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                ),
              ),
              SizedBox(height: 10),
              Container(
                decoration: BoxDecoration(),
                width: 300,
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "User : ",
                    hintStyle: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              SizedBox(height: 10),
              Container(
                decoration: BoxDecoration(),
                width: 300,
                child: TextField(
                  keyboardType: TextInputType.datetime,
                  decoration: InputDecoration(
                    hintText: "Date : ",
                    hintStyle: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              SizedBox(height: 10),
              Container(
                decoration: BoxDecoration(),
                width: 300,
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "Location : ",
                    hintStyle: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              SizedBox(height: 10),
              Container(
                decoration: BoxDecoration(),
                width: 300,
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "Tag RFID : ",
                    hintStyle: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              SizedBox(height: 10),
              Center(
                child: Container(
                  height: 250,
                  width: 400,
                  decoration:
                      BoxDecoration(border: Border.all(color: Colors.black)),
                  child: Stack(
                    children: [
                      Positioned(
                        right: 0,
                        child: Container(
                          height: 50,
                          width: 130,
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.black)),
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "Quantity",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 0,
                        right: 130,
                        child: Container(
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.black)),
                          height: 50,
                          width: 100,
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "Tag RFID",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(height: 10),
              Container(
                decoration: BoxDecoration(),
                width: 300,
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "Total quantity : ",
                    hintStyle: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              SizedBox(height: 10),
              ElevatedButton(
                onPressed: () {},
                child: Text(
                  "Download",
                  style: TextStyle(
                      color: Colors.red[300], fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      "Exit",
                      style: TextStyle(
                          color: Colors.red[300], fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(width: 50),
                  ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      "Backup",
                      style: TextStyle(
                          color: Colors.grey[900], fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(width: 50),
                  ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      "Crush",
                      style: TextStyle(
                          color: Colors.red[300], fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
