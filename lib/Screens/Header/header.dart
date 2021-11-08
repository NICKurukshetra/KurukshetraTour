import 'package:flutter/material.dart';

import 'package:kurukshetra_tour/Models/ModMainApp.dart';
import 'package:kurukshetra_tour/Screens/6way.dart';
import 'package:kurukshetra_tour/Screens/Route/myRoute.dart';

import 'package:kurukshetra_tour/Screens/TourMain.dart';
import 'package:url_launcher/url_launcher.dart';

// Three Dot Appbar Menu

class PopUp extends StatefulWidget {
  @override
  State<PopUp> createState() => _PopUpState();
}

class _PopUpState extends State<PopUp> {
  @override
  void initState() {
    // TODO: implement initState

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        PopupMenuButton(
          // color: Colors.grey.shade200,
          offset: Offset(15, 40),
          //elevation: 30,
          itemBuilder: (context) {
            return popmap.map((MainScreen choice) {
              return PopupMenuItem(
                value: choice,
                child: GestureDetector(
                  onTap: () {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) => myRoute(
                                  type: choice.id,
                                  index: popmap.indexOf(choice),
                                  srno: choice.srno.toString(),
                                )));
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Image.network(
                        choice.icon,
                        width: MediaQuery.of(context).size.width / 20,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Text(choice.title),
                      ),
                    ],
                  ),
                ),
              );
            }).toList();
          },

          onSelected: (route) {
            // Note You must create respective pages for navigation
            //Navigator.pushNamed(context, route);
          },
        ),
        Text(
          'Kurukshetra Darshan',
          style: TextStyle(
            fontSize: MediaQuery.of(context).size.width / 25,
            color: Colors.black87,
          ),
        ),
      ],
    );
  }
}

// BottomNavigation widget Code
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
                  context, MaterialPageRoute(builder: (context) => TourPlan()));
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

class LineImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Image.asset('assets/images/outline.jpeg', fit: BoxFit.contain);
  }
}

class CustomClipPath extends CustomClipper<Path> {
  var radius = 1.0;
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(0, size.height);
    path.arcToPoint(Offset(size.width, size.height - 5),
        radius: Radius.elliptical(25, 3));
    path.lineTo(size.width, 0);
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}

class HeaderSinglePage extends StatelessWidget {
  late String headerimage;
  String maintitle;

  HeaderSinglePage({required this.maintitle, required this.headerimage});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: <Widget>[
          ClipPath(
            clipper: CustomClipPath(),
            child: Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height / 6,
              color: color,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: MediaQuery.of(context).size.height / 8,
              alignment: Alignment.center,
              decoration: new BoxDecoration(
                color: Colors.black,
                image: new DecorationImage(
                  fit: BoxFit.cover,
                  colorFilter: new ColorFilter.mode(
                      Colors.black.withOpacity(0.3), BlendMode.dstIn),
                  image: new NetworkImage(headerimage),
                ),
              ),
              child: Text(
                maintitle,
                style: TextStyle(color: Colors.white, fontSize: 26),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
