// ignore_for_file: prefer_const_constructors, camel_case_types, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class wifiModel extends StatefulWidget {
  wifiModel({Key? key}) : super(key: key);

  @override
  State<wifiModel> createState() => _wifiModelState();
}

class _wifiModelState extends State<wifiModel> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          elevation: 0,
          backgroundColor: Colors.white,
          title: Text(
            "Control with Wifi",
            style: TextStyle(
              color: Colors.black,
            ),
          ),
        ),
        body: Column(
          children: [Text("Available Bluetooth Devices")],
        ));
  }
}
