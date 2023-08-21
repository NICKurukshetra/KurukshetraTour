import 'dart:async';

import 'package:flutter/material.dart';

import 'package:kurukshetra_tour/Screens/locslider.dart';
import 'package:new_version/new_version.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState() {
    super.initState();
    // Instantiate NewVersion manager object (Using GCP Console app as example)
    final newVersion = NewVersion(
      iOSId: 'com.nic.kurukshetra_tour',
      androidId: 'com.nic.kurukshetra_tour',
    );

    // You can let the plugin handle fetching the status and showing a dialog,
    // or you can fetch the status and display your own dialog, or no dialog.

    Timer(
        Duration(seconds: 2),
        () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => LocSlider())));
  }

  // basicStatusCheck(NewVersion newVersion) {
  //   newVersion.showAlertIfNecessary(context: context);
  // }

  // advancedStatusCheck(NewVersion newVersion) async {
  //   final status = await newVersion.getVersionStatus();
  //   if (status != null) {

  //     newVersion.showUpdateDialog(
  //       context: context,
  //       versionStatus: status,
  //       dialogTitle: 'Update Available',
  //       dialogText: 'Please updated your app',
  //     );
  //   }
  //}

  @override
  Widget build(BuildContext context) {
    final textScale = MediaQuery.of(context).textScaleFactor;
    print(textScale);
    return Scaffold(
        body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
              child: Text(
            "Kurukshetra Darshan",
            style: TextStyle(
              color: Colors.brown[900],
              fontSize: 22,
            ),
          )),
          Container(
            child: Column(
              //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                //FlutterLogo(size: 100),
                Image.asset(
                  "assets/images/mahabharata.png",
                  width: MediaQuery.of(context).size.width / 1.5,
                ),
                Center(
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "देखो मेरा कुरुक्षेत्र",
                          style: TextStyle(
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
          // SizedBox(
          //   height: 30,
          // ),
          Center(
            child: ShaderMask(
              blendMode: BlendMode.modulate,
              shaderCallback: (size) => LinearGradient(
                colors: [Colors.green, Colors.red, Colors.blue],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ).createShader(
                Rect.fromLTWH(0, 0, size.width, size.height),
              ),
              child: Center(
                child: Text(
                  'District Administration Kurukshetra',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      //fontSize: MediaQuery.of(context).size.width * 0.05
                      fontSize: (textScale >= 1) ? 14 : 20 * 1),
                  //fontSize: MediaQuery.of(context).devicePixelRatio * 7),
                ),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/gov_logo.jpg',
                height: 70,
              ),
              Image.asset(
                'assets/images/kdblogo.jpg',
                height: 70,
              ),
              Image.asset(
                'assets/images/niclogo.jpg',
              ),
            ],
          ),
        ],
      ),
    ));
  }
}
