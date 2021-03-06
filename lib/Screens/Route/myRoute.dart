import 'package:flutter/material.dart';
import 'package:kurukshetra_tour/Screens/AboutUs.dart';
import 'package:kurukshetra_tour/Screens/MultiSlider/ExploreTheCity.dart';
import 'package:kurukshetra_tour/Screens/PlacesGrid/PlacesList.dart';
import 'package:kurukshetra_tour/Screens/TourMain.dart';
import '../TourMain.dart';

class myRoute extends StatelessWidget {
  int type;
  int index;
  String srno;

  myRoute({
    required this.type,
    required this.index,
    required this.srno,
  });

  @override
  Widget build(BuildContext context) {
    if (type == 1) {
      return AboutUs(
        title: popmap[index].title,
        image: popmap[index].image,
        id: srno,
        svalue: false,
      );
    }
    if (type == 2) {
      return PlacesGrid(
        title: popmap[index].title,
        image: popmap[index].image,
        id: srno,
        svalue: false,
      );
    }
    if (type == 4) {
      return PlacesGrid(
        title: popmap[index].title,
        image: popmap[index].image,
        id: srno,
        svalue: true,
      );
    }
    if (type == 3) {
      return ExploreTheCity(
        title: popmap[index].title,
        image: popmap[index].image,
        id: srno,
      );
    }

    return TourMainScreen();
  }
}
