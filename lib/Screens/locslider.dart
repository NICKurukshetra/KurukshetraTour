import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:kurukshetra_tour/Screens/TourMain.dart';

class LocSlider extends StatefulWidget {
  @override
  State<LocSlider> createState() => _LocSliderState();
}

class _LocSliderState extends State<LocSlider> {
  var list = [
    'assets/images/01.jpg',
    'assets/images/02.jpg',
    'assets/images/03.jpg',
    'assets/images/04.jpg',
    'assets/images/05.jpg',
    'assets/images/06.jpg',
    'assets/images/07.jpg'
  ];

  void initState() {
    list.shuffle();
    super.initState();
    Timer(
        Duration(seconds: 10),
        () => Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (context) => TourMainScreen())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: TweenAnimationBuilder(
        duration: const Duration(milliseconds: 3000),
        curve: Curves.easeInOutCirc,
        tween: Tween<double>(begin: 0.1, end: 1.0),
        builder: (context, double value, child) {
          return Align(
            alignment: Alignment(0, value + 2),
            child: Transform.scale(
              scale: 2 - value,
              child: child,
            ),
          );
        },
        child: Stack(
          fit: StackFit.expand,
          children: [
            Text(
              "data",
              style: TextStyle(fontSize: 30, color: Colors.white),
            ),
            Image.asset(
              list[0],
              fit: BoxFit.cover,
            ),
          ],
        ),
      ),
    );
  }
}
