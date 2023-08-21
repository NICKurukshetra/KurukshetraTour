import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:kurukshetra_tour/Screens/Footer/footer.dart';
import 'package:kurukshetra_tour/Screens/Header/Drawer.dart';
import 'package:url_launcher/url_launcher.dart';
import 'Header/appbar.dart';
import 'Header/header.dart';

class contactcls extends StatelessWidget {
  const contactcls({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          drawer: DrawerMenu(),
          appBar: Appbar(),
          body: Container(
            child: Column(children: <Widget>[
              Expanded(
                flex: 1,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    //  LineImage(), // call class in TourAppbar.dart file
                    HeaderSinglePage(),
                    Padding(
                      padding: const EdgeInsets.all(28.0),
                      child: Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Address",
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 15),
                              child: Text(
                                "D.C. office,  Mini Secretariat, Sector 10, Kurukshetra, Haryana-136118",
                                style:
                                    TextStyle(fontSize: 15, color: Colors.grey),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 15),
                              child: Text(
                                "Contact",
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 15),
                              child: Text(
                                " 01744-222696,",
                                style:
                                    TextStyle(fontSize: 15, color: Colors.grey),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 15),
                              child: Text(
                                "Email",
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 15),
                              child: Text(
                                "diokrk@gov.in",
                                style:
                                    TextStyle(fontSize: 15, color: Colors.grey),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),

                    InkWell(
                      onTap: mappdirc,
                      child: Container(
                        padding: EdgeInsets.all(10),
                        alignment: Alignment.topLeft,
                        child: Image.asset(
                          'assets/images/mapImage.jpg',
                          width: double.infinity,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    //  LineImage(), // call class in TourAppbar.dart file
                  ],
                ),
              ),
            ]),
          ),

          bottomNavigationBar:
              BottomNavigation(), // call class in TourAppbar.dart file
        ));
  }

  void mappdirc() {
    launch("https://goo.gl/maps/MNHYd6RvVijhkjpy9");
  }
}

class CustomClipPath extends CustomClipper<Path> {
  var radius = 1.0;
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(0, size.height);
    path.arcToPoint(Offset(size.width, size.height),
        radius: Radius.elliptical(35, 5));
    path.lineTo(size.width, 0);
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}

class HeaderSinglePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: <Widget>[
          ClipPath(
            clipper: CustomClipPath(),
            child: Container(
              width: 800,
              height: 150,
              color: Colors.grey[400],
            ),
          ),
          Container(
              padding: EdgeInsets.all(5),
              child: Image.network(
                'https://image.freepik.com/free-vector/stylish-glowing-digital-red-lines-banner_1017-23964.jpg',
                fit: BoxFit.fill,
                width: 800,
                height: 100,
              )),
          Container(
            alignment: Alignment.bottomCenter,
            height: 100,
            padding: EdgeInsets.only(
                // top: 30,
                ),
            child: Text(
              'Contact',
              style: TextStyle(color: Colors.white, fontSize: 26),
            ),
          ),
        ],
      ),
    );
  }
}

// class BottomNavigation extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       height: 45,
//       color: Colors.white,
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//         children: [
//           Text(
//             "6",
//             style: TextStyle(
//                 color: Colors.blue, fontWeight: FontWeight.bold, fontSize: 28),
//           ),
//           GestureDetector(
//             onTap: () {
//               // Navigator.push(
//               //     context, MaterialPageRoute(builder: (context) => HomePage()));
//             },
//             child: Text(
//               "Way To Discover\n Kurukshetra",
//               style: TextStyle(
//                   fontWeight: FontWeight.bold,
//                   color: Colors.blue,
//                   fontSize: 15),
//             ),
//           ),
//           Text(
//             "|",
//             style: TextStyle(
//                 fontWeight: FontWeight.bold, color: Colors.blue, fontSize: 30),
//           ),
//           GestureDetector(
//             onTap: () {
//               // Navigator.push(
//               //     context, MaterialPageRoute(builder: (context) => HomePage()));
//             },
//             child: Text(
//               "Kurukshetra Darshan",
//               style: TextStyle(
//                   fontWeight: FontWeight.bold,
//                   color: Colors.blue,
//                   fontSize: 18),
//             ),
//           )
//         ],
//       ),
//     );
//   }
// }
