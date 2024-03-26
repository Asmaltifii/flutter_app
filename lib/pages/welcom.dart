// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Welcome extends StatelessWidget {
  const Welcome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red[300],
          title: Center(
              child: Text(
            "Welcome",
            style: TextStyle(
                fontWeight: FontWeight.bold, fontSize: 35, fontFamily: "font"),
          )),
        ),
        body: SizedBox(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                "assets/images/ansaldo.png",
                height: 100,
              ),
              SizedBox(height: 80),
              ElevatedButton(
              
                onPressed: () {Navigator.pushNamed(context, '/login');
                  },
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.red[99]),
                  padding: MaterialStateProperty.all(
                      EdgeInsets.symmetric(horizontal: 100, vertical: 15)),
                  shape: MaterialStateProperty.all(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(22))),
                ),
                child: Text(
                  "Log in",
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: 22,
              ),
              ElevatedButton(
                onPressed: () { Navigator.pushNamed(context, '/signup'); },
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.red[100]),
                  padding: MaterialStateProperty.all(
                      EdgeInsets.symmetric(horizontal: 100, vertical: 15)),
                  shape: MaterialStateProperty.all(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(22))),
                ),
                child: Text(
                  "Sign up",
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
        ));
  }
}
