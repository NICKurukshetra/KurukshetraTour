import 'package:flutter/material.dart';
import 'package:kurukshetra_tour/Models/Methods/getMainScreen.dart';
import 'package:kurukshetra_tour/Models/ModMainApp.dart';
import 'package:kurukshetra_tour/Screens/TourMain.dart';

// Three Dot Appbar Menu


class PopUp extends StatefulWidget {
 
  @override
  State<PopUp> createState() => _PopUpState();
}

class _PopUpState extends State<PopUp> {

var data;

@override
  void initState() {
    // TODO: implement initState
    data=getMainScreen().fetchmaindata();
    super.initState();
  }

  @override

  Widget build(BuildContext context) {
    return Row(
      children: [
        PopupMenuButton(
         // color: Colors.grey.shade200,
         offset: Offset(15,40),
          elevation: 30,
          itemBuilder:(context) {
                  return data.map((MainScreen choice) {
                    return PopupMenuItem(
                      value: choice,
                      child: Text(choice.title),
                    );
                  }).toList();
                },
          //[
            
            
            // PopupMenuItem(
            //     child: Row(children: [
            //   Icon(Icons.search),
            //   Text(
            //     'About Kurukshetra',
            //     style: TextStyle(
                
            //       fontSize: 14,
            //       fontWeight: FontWeight.bold,
            //     ),
            //   )
            // ])),
            // PopupMenuItem(
            //     child: Row(children: [
            //   Icon(Icons.explore),
            //   Text(
            //     'Explore the City',
            //     style: TextStyle(
                 
            //       fontSize: 14,
            //       fontWeight: FontWeight.bold,
            //     ),
            //   )
            // ])),
            // PopupMenuItem(
            //     child: Row(children: [
            //   Icon(Icons.ac_unit),
            //   Text(
            //     'Unexplored Kurukshetra',
            //     style: TextStyle(
               
            //       fontSize: 14,
            //       fontWeight: FontWeight.bold,
            //     ),
            //   )
            // ])),
            // PopupMenuItem(
            //     child: Row(children: [
            //   Icon(Icons.bed),
            //   Text(
            //     'Stay in Delhi',
            //     style: TextStyle(
                
            //       fontSize: 14,
            //       fontWeight: FontWeight.bold,
            //     ),
            //   )
            // ])),
            // PopupMenuItem(
            //     child: Row(children: [
            //   Icon(Icons.social_distance),
            //   Text(
            //     'Entertainment & Fun',
            //     style: TextStyle(
               
            //       fontSize: 14,
            //       fontWeight: FontWeight.bold,
            //     ),
            //   )
            // ])
            // ),
          //],
          onSelected: (route) {
            print(route);
            // Note You must create respective pages for navigation
            //Navigator.pushNamed(context, route);
          },
        ),
        Text(
          'Kurukshetra Darshan',
          style: TextStyle(
            fontSize: 18,
            color: Colors.black87,
            
          ),
        ),
      ],
    );
  }
}

// BottomNavigation widget Code
class BottomNavigation extends StatelessWidget {
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
                  context, MaterialPageRoute(builder: (context) => TourMainScreen()));
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
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => TourMainScreen()));
            },
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

class LineImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  Image.asset('assets/images/outline.jpeg',
      fit: BoxFit.contain);
  }
}
