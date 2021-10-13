// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:kurukshetra_tour/Screens/Header/appbar.dart';
import 'package:kurukshetra_tour/Screens/Header/header.dart';



class PlacesDetail extends StatelessWidget {

  final String title;
  final String image;
  PlacesDetail({required this.title,required this.image});
  @override
  Widget build(BuildContext context) {
    return 
        Scaffold(
          drawer: Drawer(),
          appBar: Appbar(),
          body: Container(
            child: Column(children: <Widget>[
              Expanded(
                flex: 1,
                child: Column(
                  // crossAxisAlignment: CrossAxisAlignment.center,
                  // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    LineImage(), // call class in TourAppbar.dart file
                    Expanded(
                      flex: 1,
                      child: Container(
                        child: SingleChildScrollView(
                          child: Column(
                            children: [
                              HeaderSinglePage(title: title,image: image,),
                              Container(
                                  padding: EdgeInsets.only(left: 10),
                                  alignment: Alignment.topLeft,
                                  child: Text(
                                    'Description',
                                    style: TextStyle(fontSize: 16),
                                  )),
                              Container(
                                  padding: EdgeInsets.all(10),
                                  alignment: Alignment.topLeft,
                                  child: Text(
                                    'Sheikh Chilli Tomb is complex of structures located in Thanesar, in the Kurukshetra district of Haryana, India. It includes two tombs, a madrasa, Mughal gardens and various subsequent features.The main tomb belongs to Sufi Abd-ur-Rahim Abdul-Karim Abd-ur-Razak, popularly known by the name of Sheikh Chilli. He was Qadiriyya Sufi master of Mughal Prince Dara Shikoh.',
                                    style: TextStyle(fontSize: 12),
                                  )),
                              Container(
                                  padding: EdgeInsets.only(left: 10),
                                  alignment: Alignment.topLeft,
                                  child: Text(
                                    'Timings',
                                    style: TextStyle(fontSize: 16),
                                  )),
                              Container(
                                  padding: EdgeInsets.all(10),
                                  alignment: Alignment.topLeft,
                                  child: Text(
                                    '9:am - 5:30 pm (Open All Days)',
                                    style: TextStyle(fontSize: 12),
                                  )),
                              Container(
                                  padding: EdgeInsets.only(left: 10),
                                  alignment: Alignment.topLeft,
                                  child: Text(
                                    'Nearest Bus Stand',
                                    style: TextStyle(fontSize: 16),
                                  )),
                              Container(
                                  padding: EdgeInsets.all(10),
                                  alignment: Alignment.topLeft,
                                  child: Text(
                                    'SH 6, Jyoti Nagar, Kurukshetra, Haryana 136118',
                                    style: TextStyle(fontSize: 12),
                                  )),
                              Container(
                                  padding: EdgeInsets.all(10),
                                  alignment: Alignment.topLeft,
                                  child: Text(
                                      'For more details visit: kurukshetra.gov.in',
                                      style: TextStyle(
                                        fontSize: 12,
                                        color: Colors.blue,
                                        fontWeight: FontWeight.bold,
                                      ))),
                              Container(
                                  padding: EdgeInsets.all(10),
                                  alignment: Alignment.topLeft,
                                  child: Image.network("https://cdn.s3waas.gov.in/s3248e844336797ec98478f85e7626de4a/uploads/2021/10/2021101343.jpg")),
                            ],
                          ),
                        ),
                      ),
                    ),

                    LineImage(), // call class in TourAppbar.dart file
                  ],
                ),
              ),
            ]),
          ),
          bottomNavigationBar:
              BottomNavigation(), // call class in TourAppbar.dart file
        );
  }
}

class HeaderSinglePage extends StatelessWidget {

  final String title;
  final String image;
  HeaderSinglePage({required this.title,required this.image});
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Container(
            alignment: Alignment.topLeft,
            padding: EdgeInsets.only(top: 10, left: 5),
            child: Text(
              title,
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 22),
            ),
          ),
          Container(
            margin: EdgeInsets.all(5),
            width: 400,
            height: 150,
            decoration: BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(
                    image,
                  )),
              borderRadius: BorderRadius.all(Radius.circular(8.0)),
              color: Colors.redAccent,
            ),
          ),
        ],
      ),
    );
  }
}
