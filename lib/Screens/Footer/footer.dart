import 'package:flutter/material.dart';
import 'package:kurukshetra_tour/Screens/Header/header.dart';
import 'package:kurukshetra_tour/Screens/TourMain.dart';
import 'package:url_launcher/url_launcher.dart';

import '../6way.dart';

class BottomNavigation extends StatelessWidget {
  void lanuchURL() {
  launch("https://www.youtube.com/watch?v=YlqkDY0NqcQ");
}
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            "6",
            style: TextStyle(
                color: Colors.blue, fontWeight: FontWeight.bold, fontSize: 28),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Ways()));
            },
            child: Text(
              "Way To Discover\n Kurukshetra",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.blue,
                  fontSize: 15),
            ),
          ),
          Text(
            "|",
            style: TextStyle(
                fontWeight: FontWeight.bold, color: Colors.blue, fontSize: 30),
          ),
          GestureDetector(
            onTap: lanuchURL,
            child: Text(
              "Kurukshetra Darshan",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.blue,
                  fontSize: 18),
            ),
          )
        ],
      ),
    );
  }
}
