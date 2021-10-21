import 'package:flutter/material.dart';
import 'package:kurukshetra_tour/Screens/AboutUs.dart';
import 'package:kurukshetra_tour/Screens/MultiSlider/ExploreTheCity.dart';
import 'package:kurukshetra_tour/Screens/PlacesGrid/PlacesList.dart';
import 'package:kurukshetra_tour/Screens/TourMain.dart';

class myRoute extends StatelessWidget {
  int id;
  int index;
  myRoute({required this.id,required this.index});
  

  @override
  Widget build(BuildContext context) {
     
      if( id== 1) { return AboutUs();}
    if( id== 2) { return PlacesGrid(title: popmap[index].title,image: popmap[index].image,);}
    if( id== 4) { return ExploreTheCity(title: popmap[index].title,image: popmap[index].image,);}
       
       
       return TourMainScreen();
       
      
  } 
  
}