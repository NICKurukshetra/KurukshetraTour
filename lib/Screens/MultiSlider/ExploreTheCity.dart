// ignore_for_file: must_be_immutable

import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:http/http.dart';
import 'package:kurukshetra_tour/Models/Methods/getMainScreen.dart';
import 'package:kurukshetra_tour/Models/MultiStyle.dart';
import 'package:kurukshetra_tour/Models/Places.dart';
import 'package:kurukshetra_tour/Screens/Error/404.dart';
import 'package:kurukshetra_tour/Screens/Header/Drawer.dart';
import 'package:kurukshetra_tour/Screens/Header/appbar.dart';
import 'package:kurukshetra_tour/Screens/Header/header.dart';
import 'package:kurukshetra_tour/Screens/TourMain.dart';

class ExploreTheCity extends StatefulWidget {
  final String title;
  final String image;
  ExploreTheCity({required this.title, required this.image});

  @override
  State<ExploreTheCity> createState() => _ExploreTheCityState();
}

class _ExploreTheCityState extends State<ExploreTheCity> {
  final List<dynamic> imagesList = [
    'https://cdn.s3waas.gov.in/s3248e844336797ec98478f85e7626de4a/uploads/2018/06/2018060167.png',
    'https://cdn.s3waas.gov.in/s3248e844336797ec98478f85e7626de4a/uploads/2018/06/2018060670.jpg',
    'https://cdn.s3waas.gov.in/s3248e844336797ec98478f85e7626de4a/uploads/2018/06/2018060657.jpg',
    'https://cdn.s3waas.gov.in/s3248e844336797ec98478f85e7626de4a/uploads/2018/06/2018060666.jpg',
    'https://cdn.s3waas.gov.in/s3248e844336797ec98478f85e7626de4a/uploads/2018/06/2018060670.jpg',
    'https://cdn.s3waas.gov.in/s3248e844336797ec98478f85e7626de4a/uploads/2018/06/2018060657.jpg',
    'https://cdn.s3waas.gov.in/s3248e844336797ec98478f85e7626de4a/uploads/2018/06/2018060666.jpg',
  ];

  final List<dynamic> imagesList2 = [
    'https://cdn.pixabay.com/photo/2017/12/10/14/47/piza-3010062_1280.jpg',
    'https://cdn.pixabay.com/photo/2016/06/07/01/49/ice-cream-1440830_1280.jpg',
    'https://cdn.pixabay.com/photo/2017/12/27/07/07/brownie-3042106_1280.jpg',
    'https://cdn.pixabay.com/photo/2018/02/25/07/15/food-3179853_1280.jpg',
    'https://cdn.pixabay.com/photo/2015/10/26/11/10/honey-1006972_1280.jpg',
  ];

  Future<List<MultiStyle>> getdata() async {
    var futuredata = await getMainScreen().fetchMultistyle();

    return futuredata;
  }

  Future<List<Places>> getdatabyid(String id) async {
    var futuredata = await getMainScreen().fetchplacesbyid(id);

    return futuredata;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: DrawerMenu(),
      appBar: Appbar(),
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            LineImage(), // call class in TourAppbar.dart file
            HeaderSinglePage(
                maintitle: widget.title, headerimage: widget.image),
            Expanded(
              child: FutureBuilder<List<MultiStyle>>(
                  future: getdata(),
                  builder: (context, snapshot) {
                    if (snapshot.hasData) {
                      return ListView.builder(
                          // shrinkWrap: true,
                          itemCount: snapshot.data!.length,
                          itemBuilder: (context, index) {
                            return Column(
                              children: [
                                Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Image.network(
                                        snapshot.data![index].icon,
                                        height: 20,
                                      ),
                                      Text(
                                        snapshot.data![index].title,
                                        style: TextStyle(
                                            fontSize: 18, color: Colors.black),
                                      ),
                                      SizedBox(
                                        width: 100,
                                      ),
                                      GestureDetector(
                                        onTap: () {
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      TourMainScreen()));
                                        },
                                        child: Text('View All'),
                                      )
                                    ]),
                                Container(
                                  height: 200,
                                  child: FutureBuilder<List<Places>>(
                                      future: getdatabyid(
                                          snapshot.data![index].id.toString()),
                                      builder: (context, snapshot) {
                                        if (snapshot.hasData) {
                                          return ListView.builder(

                                              //            shrinkWrap: true,

                                              itemCount: snapshot.data!.length,
                                              scrollDirection: Axis.horizontal,
                                              itemBuilder: (context, index) {
                                                return Stack(
                                                  children: [
                                                    GestureDetector(
                                                      child: Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                .all(8.0),
                                                        child: ClipRRect(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(10),
                                                          child: Image.network(
                                                            snapshot
                                                                .data![index]
                                                                .image,
                                                            height: 180,
                                                            width: 320,
                                                            fit: BoxFit.fill,
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                    Positioned(
                                                      bottom: 25,
                                                      left: 30,
                                                      child: Container(
                                                        color: Colors.black12,
                                                        child: Text(
                                                          snapshot.data![index]
                                                              .title,
                                                          style: TextStyle(
                                                              fontSize: 14,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold,
                                                              color:
                                                                  Colors.white),
                                                        ),
                                                      ),
                                                    )
                                                  ],
                                                );
                                              });
                                        }

                                        if (snapshot.hasError) {
                                          return error404();
                                        }

                                        return CircularProgressIndicator();
                                      }),
                                ),
                              ],
                            );
                          });
                    }
                    return error404();
                  }),
            ),

            LineImage(), // call class in TourAppbar.dart file
          ],
        ),
      ),
      bottomNavigationBar:
          BottomNavigation(), // call class in TourAppbar.dart file
    );
  }
}
