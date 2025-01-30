// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_km_project/widgets/show_a_ui.dart';
import 'package:flutter_km_project/widgets/show_b_ui.dart';
import 'package:flutter_km_project/widgets/show_c_ui.dart';
import 'package:flutter_km_project/widgets/show_d_ui.dart';
import 'package:flutter_km_project/widgets/show_e_ui.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Home05UI extends StatefulWidget {
  const Home05UI({super.key});

  @override
  State<Home05UI> createState() => _Home05UIState();
}

class _Home05UIState extends State<Home05UI> {
  int _selectedIndex = 2;

  List showUI = [
    ShowAUI(),
    ShowBUI(),
    ShowCUI(),
    ShowDUI(),
    ShowEUI(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink,
        title: Text(
          'KM BottomNavBar 01',
          style: TextStyle(
            color: Colors.white,
            fontFamily: 'Kanit',
          ),
        ),
        centerTitle: true,
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (value) {
          //*** คำสั่งใดที่มีผลต่อการแสดงผลบนหน้าจอ ให้เขียนอยู่ภายใต้ setState */
          setState(() {
            _selectedIndex = value;
          });
        },
        backgroundColor: Colors.pink[100],
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.pink,
        unselectedItemColor: Colors.grey,
        showSelectedLabels: true,
        showUnselectedLabels: false,
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              FontAwesomeIcons.facebook,
            ),
            label: 'Facebook',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              FontAwesomeIcons.google,
            ),
            label: 'Google',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              FontAwesomeIcons.line,
            ),
            label: 'Line',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              FontAwesomeIcons.instagram,
            ),
            label: 'Instagram',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              FontAwesomeIcons.github,
            ),
            label: 'Github',
          ),
        ],
      ),
      body: showUI[_selectedIndex],
    );
  }
}
