// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ShowAUI extends StatelessWidget {
  const ShowAUI({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Icon(
          FontAwesomeIcons.facebook,
          size: MediaQuery.of(context).size.width * 0.5,
          color: Color.fromARGB(255, 25, 102, 164),
        ),
      ),
    );
  }
}
