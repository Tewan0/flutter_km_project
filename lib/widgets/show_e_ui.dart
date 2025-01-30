// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ShowEUI extends StatelessWidget {
  const ShowEUI({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Icon(
          FontAwesomeIcons.github,
          size: MediaQuery.of(context).size.width * 0.5,
          color: Colors.black,
        ),
      ),
    );
  }
}
