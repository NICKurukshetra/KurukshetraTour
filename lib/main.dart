import 'package:flutter/material.dart';
import 'package:kurukshetra_tour/Theme/myTheme.dart';

import 'Screens/Splash/welcome.dart';


void main() {
  runApp( 

    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
      theme: lightTheme,

    )
  );
}

