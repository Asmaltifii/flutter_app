// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, dead_code, avoid_print


import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/about.dart';
import 'package:flutter_application_1/pages/artical.dart';
import 'package:flutter_application_1/pages/home.dart';
import 'package:flutter_application_1/pages/inventaire.dart';
import 'package:flutter_application_1/pages/login.dart';
import 'package:flutter_application_1/pages/setting.dart';
import 'package:flutter_application_1/pages/signup.dart';
import 'package:flutter_application_1/pages/stock.dart';
import 'package:flutter_application_1/pages/welcom.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}


class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    FirebaseAuth.instance.authStateChanges().listen((User? user) {
      if (user == null) {
        print('======User is currently signed out!');
      } else {
        print('======User is signed in!');
      }
    });
    super.initState();
  }
  

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData.light(useMaterial3: true),
        home: Welcome(),
        routes: {
          '/signup': (context) => const Signup(),
          '/login': (context) => const Login(),
          '/home': (context) => const Home(),
          '/about': (context) => const About(),
          '/artical': (context) => const Artical(),
          '/inventaire': (context) => const Inventaire(),
          '/setting': (context) => const Setting(),
          '/stock': (context) => const Stock(),
          
          

        });

    return FutureBuilder(
        future: Firebase.initializeApp(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            return Artical();
          }
          return SizedBox();
        });
  }
}
