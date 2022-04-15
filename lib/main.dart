// import 'package:asma/screens/firebase.dart';
// import 'package:asma/screens/home_screen.dart';
// ignore_for_file: prefer_const_constructors, deprecated_member_use

import 'package:asma/screens/firebase.dart';
import 'package:asma/screens/home_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    final ref = FirebaseDatabase.instance;
    final refrence = ref.reference();
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: home_page(),
    );
  }
}
