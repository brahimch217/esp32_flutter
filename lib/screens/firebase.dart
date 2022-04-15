// ignore_for_file: prefer_const_constructors, camel_case_types, prefer_const_constructors_in_immutables, non_constant_identifier_names

import 'dart:async';

import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class getData extends StatefulWidget {
  getData({Key? key}) : super(key: key);

  @override
  State<getData> createState() => _getDataState();
}

class _getDataState extends State<getData> {
  final dbref = FirebaseDatabase.instance.reference();
  StreamController streamController = StreamController();
  Future getdata() async {
    final response =
        await dbref.child("output").child("dis").once().then((value) {
      final snap = value.snapshot;
      streamController.add(snap.value);
    });
    return response;
  }

  @override
  void initState() {
    super.initState();
    streamController = StreamController();
    Timer.periodic(Duration(milliseconds: 500), (callBack) => getdata());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          "Wajahni",
          style: GoogleFonts.changa(color: Colors.black, fontSize: 30),
        ),
      ),
      body: StreamBuilder(
        stream: streamController.stream,
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          dynamic t_temp = snapshot.data;
          return Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                  child: Text(
                    "The distance between you  and the near object is : ",
                    style: GoogleFonts.poppins(fontSize: 20),
                  ),
                ),
                Center(
                  child: Text(
                    "$t_temp m",
                    style: GoogleFonts.poppins(fontSize: 30),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
