import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:kurukshetra_tour/Screens/Header/Drawer.dart';

import 'Header/appbar.dart';
import 'Header/header.dart';

class Disclaimer extends StatelessWidget {
  const Disclaimer({Key? key}) : super(key: key);

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
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      LineImage(), // call class in TourAppbar.dart file
                      HeaderSinglePage(),
                      Padding(
                        padding: const EdgeInsets.all(28.0),
                        child: Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 15),
                                child: Text(
                                  "Kurukshetra has been described in the first verse of Shrimadbhagvadgita, in the form of Dharmakshetra Kurukshetra. Kurukshetra is a place of great historical and religious significance which is seen with reverence in all the countries due to its association with Vedas and Vedic culture. This is the land on which the battle of Mahabharata was fought and Lord Krishna gave Arjuna a fair knowledge of the philosophy of karma in the Jyotisar. According to the Hindu mythology, Kurukshetra is a vast area spread over 48 kos, which includes many pilgrimage places, temples and sacred ponds, with which many events/rituals associated with the Pandavas and the Kauravas and Mahabharata war have been related. Kurukshetra is closely related to its development with the rise of Aryan civilization and the sacred Saraswati. This is the land where Manusmriti was written by Rishi Manu and the compilation of Rigveda, Samaveda by the wise Rishis. The name of Kurukshetra was named after King Kuru. By which great sacrifices were made for the prosperity of this land and its people.",
                                  textAlign: TextAlign.justify,
                                  style: TextStyle(
                                      fontSize: 15, color: Colors.grey),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 15),
                                child: Text(
                                  "Kurukshetra is as old as the history of India. The history of the area in which Kurukshetra district lies can be traced back, howsoever dimly at times to the ancient Aryan Past. According to Dr. R.C. Majumdar, “it was a religion­cultural centre even before the immigration of the Aryans into India”.",
                                  textAlign: TextAlign.justify,
                                  style: TextStyle(
                                      fontSize: 15, color: Colors.grey),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 15),
                                child: Text(
                                  "The area forming the part of Kurukshetra remained a part of Karnal District at the time of formation of Haryana State. Up to 1947, 5 districts viz. Hissar, Rohtak, Karnal, Ambala and Gurgaon existed in Haryana were the part of Punjab. In 1948 with the creation of PEPSU Mahendragarh district became one of the 19 districts of the then Punjab, and the 6th district in the Haryana Territory. With the creation of Haryana State, Jind district comes into existence on 1st Nov. 1966. Thereafter Bhiwani and Sonipat districts were created on Dec 22, 1972. Karnal District was bifurcated on January 23, 1973, and another district Kurukshetra was carved out.",
                                  textAlign: TextAlign.justify,
                                  style: TextStyle(
                                      fontSize: 15, color: Colors.grey),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 15),
                                child: Text(
                                  "Kurukshetra lies on the main Delhi Ambala Railway line about 160 kilometres North of Delhi, 34 km North of Karnal and 40 km South of Ambala.  Kurukshetra is a place known all over India for its great cultural heritage. Markanda and Saraswati are the important rivers of the district. According to Manu, the tract between the old sacred rivers Saraswati and Drishadvati in Kurukshetra was known as Brahmavarta. Kurukshetra along with Karnal and Kaithal districts is known as the ‘Rice Bowl of India’ and famous for Basmati Rice. The soil is generally alluvial, loam and clay do not constitute the average texture of the soil.",
                                  textAlign: TextAlign.justify,
                                  style: TextStyle(
                                      fontSize: 15, color: Colors.grey),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      LineImage()

                      // call class in TourAppbar.dart file
                    ],
                  ),
                ),
              ),
            ]),
          ),

          bottomNavigationBar:
              BottomNavigation(), // call class in TourAppbar.dart file
        ));
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
              'Disclaimer',
              style: TextStyle(color: Colors.white, fontSize: 26),
            ),
          ),
        ],
      ),
    );
  }
}

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
              // Navigator.push(
              //     context, MaterialPageRoute(builder: (context) => HomePage()));
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
              // Navigator.push(
              //     context, MaterialPageRoute(builder: (context) => HomePage()));
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
