import 'package:flutter/material.dart';
import 'package:kurukshetra_tour/Screens/AboutUs.dart';
import 'package:kurukshetra_tour/Screens/PlacesGrid/PlacesList.dart';
import 'package:kurukshetra_tour/Screens/TourMain.dart';

class myRoute extends StatelessWidget {
  int id;
  int index;
  myRoute({required this.id,required this.index});
  

  @override
  Widget build(BuildContext context) {
    return 
      id== 1 ? AboutUs()  :PlacesGrid(title: popmap[index].title,image: popmap[index].image,);
      
    
  }
}