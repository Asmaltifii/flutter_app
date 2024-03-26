// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/about.dart';

import 'package:flutter_application_1/pages/home.dart';
import 'package:flutter_application_1/pages/inventaire.dart';
import 'package:flutter_application_1/pages/liste.dart';
import 'package:flutter_application_1/pages/stock.dart';
import 'package:flutter_application_1/service/database.dart';

class Artical extends StatefulWidget {
  const Artical({super.key});

  @override
  State<Artical> createState() => _ArticalState();
}

class _ArticalState extends State<Artical> {
  Stream? ElementStream;
  getontheload() async {
    ElementStream = await DatabaseMethods().getElementDetails();
    setState(() {});
  }

  @override
  void initState() {
    getontheload();
    super.initState();
  }

  Widget allElementDetails() {
    return StreamBuilder(
        stream: ElementStream,
        builder: (context, AsyncSnapshot snapshot) {
          return snapshot.hasData
              ? ListView.builder(
                  itemCount: snapshot.data.docs.length,
                  itemBuilder: (context, index) {
                    DocumentSnapshot ds = snapshot.data.docs[index];
                    return Container(
                      margin: EdgeInsetsDirectional.only(bottom:20),
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(9)),
                      child: Column(
                        children: [
                          Text(
                            'Name:' + ds['Name'],
                            style: TextStyle(
                                color: Colors.red[300],
                                fontSize: 29,
                                fontWeight: FontWeight.bold),
                          ),
                          Icon(Icons.edit, color: Colors.grey[900],),
                          Text(
                            'ID:' + ds['Id'],
                            style: TextStyle(
                                color: Colors.red[300],
                                fontSize: 29,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            'Location:' + ds['Location'],
                            style: TextStyle(
                                color: Colors.red[300],
                                fontSize: 29,
                                fontWeight: FontWeight.bold),
                          ),
                          Text('Reference:' + ds['Reference'],
                              style: TextStyle(
                                  color: Colors.red[300],
                                  fontSize: 29,
                                  fontWeight: FontWeight.bold))
                        ],
                      ),
                    );
                  })
              : Container();
        });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Liste()),
            );
          },
          child: Icon(Icons.add),
        ),
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
                onTap: () {},
              ),
            ],
          ),
        ),
        appBar: AppBar(
          backgroundColor: Colors.red[300],
          title: Text(
            "Artical",
            style: TextStyle(
                fontWeight: FontWeight.w400, fontSize: 35, fontFamily: "font"),
          ),
        ),
        body: Container(
          child: Column(
            children: [
              Expanded(child: allElementDetails()),
            ],
          ),
        ),
      ),
    );
  }
}
