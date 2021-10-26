import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:kurukshetra_tour/Screens/TourMain.dart';

class LocSlider extends StatefulWidget {
  final VoidCallback afterEnd;
  final double begin;

  const LocSlider({Key? key, required this.afterEnd, required this.begin})
      : super(key: key);
      
  

  @override
  State<LocSlider> createState() => _LocSliderState();
}

class _LocSliderState extends State<LocSlider> {
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 4),
        () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => TourMainScreen())));
    
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: TweenAnimationBuilder(
        duration: const Duration(milliseconds: 3000),
        curve: Curves.easeInOutCirc,
        tween: Tween<double>(begin: widget.begin, end: 1.0),
        onEnd: widget.afterEnd,
        builder: (context, double value, child) {
          return Align(
            alignment: Alignment(0, value),
            child: Transform.scale(
                  scale: 8 - value,
                  child: child,
                ),
          );
        },
        child: Stack(
          
          
          fit: StackFit.expand,  
          children:[Text("data",style: TextStyle(
            fontSize: 30,
            color: Colors.white
          ),),
          Image.network(
            
            "https://cdn.s3waas.gov.in/s3248e844336797ec98478f85e7626de4a/uploads/2019/01/2019010428.jpg",
            fit: BoxFit.scaleDown,
            ),], ),
      
      ),
    );
  }
}
