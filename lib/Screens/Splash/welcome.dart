import 'dart:async';

import 'package:flutter/material.dart';
import 'package:kurukshetra_tour/Screens/TourMain.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 5),
        () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => TourMainScreen())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // appBar: AppBar(
        //     // title: const Text('Sample Code'),
        //     ),
        body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
              child: Text(
            "Kurukshetra Darshan",
            style: TextStyle(
              color: Colors.black,
              fontSize: 30,
            ),
          )),
          Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                FlutterLogo(size: 100),
                Center(
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "देखो मेरा कुरुक्षेत्र",
                          style: TextStyle(
                            color: Colors.blue,
                            fontSize: 15,
                          ),
                        ),
                        Text(
                          " | ",
                          style: TextStyle(
                            color: Colors.blue,
                            fontSize: 20,
                          ),
                        ),
                        Text(
                          "Dekho Mera Kurukshetra",
                          style: TextStyle(
                            color: Colors.blue,
                            fontSize: 15,
                          ),
                        ),
                      ]),
                )
              ],
            ),

            // Image.asset(
            //   'assets/Logo/GitaUpdesh.png',
            //height: MediaQuery.of(context).size.width / 50.5,
            //width: MediaQuery.of(context).size.width / 50.5,
          ),
          Center(
            child: ShaderMask(
              blendMode: BlendMode.modulate,
              shaderCallback: (size) => LinearGradient(
                colors: [Colors.green, Colors.yellow, Colors.red, Colors.blue],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ).createShader(
                Rect.fromLTWH(0, 0, size.width, size.height),
              ),
              child: Text(
                '''यदा यदा हि धर्मस्य ग्लानिर्भवति भारत।
अभ्युत्थानमधर्मस्य तदात्मानं सृजाम्यहम्।।''',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ),
          ),
        ],
      ),
    ));
  }
}