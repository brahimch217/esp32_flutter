// ignore_for_file: prefer_const_constructors, camel_case_types, prefer_const_constructors_in_immutables, sized_box_for_whitespace

import 'package:asma/screens/bluetooth.dart';
import 'package:asma/screens/firebase.dart';
import 'package:asma/screens/wifi.dart';
import 'package:flutter/material.dart';

class home_page extends StatefulWidget {
  home_page({Key? key}) : super(key: key);

  @override
  State<home_page> createState() => _home_pageState();
}

class _home_pageState extends State<home_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.white,
        title: Text(
          "Wajahni",
          style: TextStyle(
            color: Colors.black,
          ),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 80.0),
            child: Center(
              child: InkWell(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => getData(),
                    ),
                  );
                },
                child: Container(
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 5,
                        blurRadius: 30,
                        offset: Offset(20, 10), // changes position of shadow
                      ),
                    ],
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.blue.withOpacity(0.3),
                  ),
                  height: 50,
                  width: 300,
                  child: Center(child: Text("Wifi")),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20.0),
            child: Center(
              child: InkWell(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => blModel(),
                    ),
                  );
                },
                child: Container(
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 5,
                        blurRadius: 30,
                        offset: Offset(20, 10), // changes position of shadow
                      ),
                    ],
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.blue.withOpacity(0.3),
                  ),
                  height: 50,
                  width: 300,
                  child: Center(
                    child: Text("Bluetooth"),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
