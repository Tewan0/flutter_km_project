// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_km_project/view/home02_ui.dart';
import 'package:introduction_screen/introduction_screen.dart';

class IntroductionScreenUI extends StatefulWidget {
  const IntroductionScreenUI({super.key});

  @override
  State<IntroductionScreenUI> createState() => _IntroductionScreenUIState();
}

class _IntroductionScreenUIState extends State<IntroductionScreenUI> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IntroductionScreen(
        pages: [
          PageViewModel(
            title: 'SAU Hello 123',
            body: 'Wellcome to sau 111',
            image: Image.asset(
              'assets/images/pic1.png',
              width: MediaQuery.of(context).size.width * 0.6,
            ),
          ),
          PageViewModel(
            title: 'SAU Hello 456',
            body: 'Wellcome to sau 222',
            image: Image.asset(
              'assets/images/pic2.png',
              width: MediaQuery.of(context).size.width * 0.6,
            ),
          ),
          PageViewModel(
            title: 'SAU Hello 789',
            body: 'Wellcome to sau 333',
            image: Image.asset(
              'assets/images/pic3.png',
              width: MediaQuery.of(context).size.width * 0.6,
            ),
          ),
          PageViewModel(
            title: 'SAU Hello 101112',
            body: 'Wellcome to sau 444',
            image: Image.asset(
              'assets/images/pic4.png',
              width: MediaQuery.of(context).size.width * 0.6,
            ),
          ),
          PageViewModel(
            title: 'SAU Hello 131415',
            body: 'Wellcome to sau 555',
            image: Image.asset(
              'assets/images/pic5.png',
              width: MediaQuery.of(context).size.width * 0.6,
            ),
          ),
        ],
        showSkipButton: true,
        skip: Text(
          'ข้าม',
        ),
        showNextButton: true,
        next: Icon(
          Icons.arrow_forward_ios,
        ),
        showDoneButton: true,
        done: Text(
          'หน้าหลัก',
        ),
        onDone: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => Home02UI(),
            ),
          );
        },
        scrollPhysics: ClampingScrollPhysics(),
      ),
    );
  }
}
