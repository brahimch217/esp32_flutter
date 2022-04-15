// ignore_for_file: prefer_const_constructors, camel_case_types, prefer_const_literals_to_create_immutables, prefer_const_constructors_in_immutables, avoid_print, unused_local_variable, unused_import

import 'package:esc_pos_bluetooth/esc_pos_bluetooth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_blue/flutter_blue.dart';
import 'package:google_fonts/google_fonts.dart';

class blModel extends StatefulWidget {
  blModel({Key? key}) : super(key: key);

  @override
  State<blModel> createState() => _blModelState();
}

class _blModelState extends State<blModel> {
  @override
  void initState() {
    initBluetooth();
    super.initState();
  }

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
          Text("Available Bluetooth Devices"),
          Padding(
            padding: const EdgeInsets.only(top: 20.0, left: 10),
            child: Container(
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 15.0),
                    child: Icon(
                      Icons.bluetooth,
                      size: 35,
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Bluetooth Name",
                        style: GoogleFonts.poppins(fontSize: 20),
                      ),
                      Text(
                        "Bluetooth ID",
                        style: GoogleFonts.poppins(fontSize: 16),
                      )
                    ],
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  void initBluetooth() {
    final flutterBlue = FlutterBlue.instance;
    flutterBlue.startScan(timeout: Duration(seconds: 2));
    var response = flutterBlue.scanResults.listen((reslt) {
      for (ScanResult r in reslt) {
        print("==========");
        print('${r.device.name} found! rssi: ${r.rssi}');
        print("==========");
      }
    });
  }
}
