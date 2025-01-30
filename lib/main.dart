// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_km_project/view/home03_ui.dart';
import 'package:flutter_km_project/view/home05_ui.dart';
import 'package:flutter_km_project/view/home06_ui.dart';
import 'package:flutter_km_project/view/introduction_screen_ui.dart';

void main() {
  runApp(FlutterKM());
}

class FlutterKM extends StatefulWidget {
  const FlutterKM({super.key});

  @override
  State<FlutterKM> createState() => _FlutterKMState();
}

class _FlutterKMState extends State<FlutterKM> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home06UI(),
    );
  }
}
