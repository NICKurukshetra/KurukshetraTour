import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:kurukshetra_tour/Screens/Header/appbar.dart';

import 'Header/header.dart';

class TourPlan extends StatelessWidget {
  const TourPlan({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(),
      appBar: Appbar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Container(
            child: Column(
              children: [
                LineImage(), // call class in TourAppbar.dart file
                HeaderSinglePage(
                  headerimage: "",
                  maintitle: "Plan Your Tour",
                ),

                Column(
                  children: [
                    Container(
                      margin: EdgeInsets.all(5),
                      child: Expanded(
                        flex: 4,
                        child: Container(
                          child: Row(
                            children: [
                              Expanded(
                                  flex: 2,
                                  child: Container(
                                    color: Colors.red,
                                    // width: 200,
                                    height: 230,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.stretch,
                                      children: [
                                        new Container(
                                          height: 230,
                                          decoration: new BoxDecoration(
                                            color: Colors.black,
                                            image: new DecorationImage(
                                              fit: BoxFit.cover,
                                              colorFilter: new ColorFilter.mode(
                                                  Colors.black.withOpacity(0.1),
                                                  BlendMode.dstATop),
                                              image: new AssetImage(
                                                "assets/imag/1.jpg",
                                              ),
                                            ),
                                          ),
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Icon(
                                                Icons.map_outlined,
                                                color: Colors.white,
                                                size: 20,
                                              ),
                                              new Text(
                                                'Places \nNear Me ',
                                                style: TextStyle(
                                                  color: Colors.white,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  )),
                              SizedBox(
                                width: 10,
                              ),
                              Expanded(
                                  flex: 2,
                                  child: Column(
                                    //mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Container(
                                        width: double.infinity,
                                        height: 110,
                                        decoration: new BoxDecoration(
                                          color: Colors.black,
                                          image: new DecorationImage(
                                            fit: BoxFit.cover,
                                            colorFilter: new ColorFilter.mode(
                                                Colors.black.withOpacity(0.1),
                                                BlendMode.dstATop),
                                            image: new AssetImage(
                                              "assets/imag/1.jpg",
                                            ),
                                          ),
                                        ),
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Icon(
                                              Icons.countertops_outlined,
                                              color: Colors.white,
                                              size: 20,
                                            ),
                                            new Text(
                                              'Top 10 List',
                                              style: TextStyle(
                                                color: Colors.white,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Container(
                                        width: double.infinity,
                                        height: 110,
                                        decoration: new BoxDecoration(
                                          color: Colors.black,
                                          image: new DecorationImage(
                                            fit: BoxFit.cover,
                                            colorFilter: new ColorFilter.mode(
                                                Colors.black.withOpacity(0.1),
                                                BlendMode.dstATop),
                                            image: new AssetImage(
                                              "assets/imag/1.jpg",
                                            ),
                                          ),
                                        ),
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Icon(
                                              Icons.ac_unit,
                                              color: Colors.white,
                                              size: 20,
                                            ),
                                            new Text(
                                              'Plan your Tour',
                                              style: TextStyle(
                                                color: Colors.white,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  )),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(5),
                      child: Expanded(
                        flex: 4,
                        child: Container(
                          child: Row(
                            children: [
                              Expanded(
                                  flex: 2,
                                  child: Column(
                                    //mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Container(
                                        width: double.infinity,
                                        height: 110,
                                        decoration: new BoxDecoration(
                                          color: Colors.black,
                                          image: new DecorationImage(
                                            fit: BoxFit.cover,
                                            colorFilter: new ColorFilter.mode(
                                                Colors.black.withOpacity(0.1),
                                                BlendMode.dstATop),
                                            image: new AssetImage(
                                              "assets/imag/1.jpg",
                                            ),
                                          ),
                                        ),
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Icon(
                                              Icons.person,
                                              color: Colors.white,
                                              size: 20,
                                            ),
                                            new Text(
                                              'Book a Guide',
                                              style: TextStyle(
                                                color: Colors.white,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Container(
                                        width: double.infinity,
                                        height: 110,
                                        decoration: new BoxDecoration(
                                          color: Colors.black,
                                          image: new DecorationImage(
                                            fit: BoxFit.cover,
                                            colorFilter: new ColorFilter.mode(
                                                Colors.black.withOpacity(0.1),
                                                BlendMode.dstATop),
                                            image: new AssetImage(
                                              "assets/imag/1.jpg",
                                            ),
                                          ),
                                        ),
                                        child: Center(
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Icon(
                                                Icons.format_quote,
                                                color: Colors.white,
                                                size: 20,
                                              ),
                                              new Text(
                                                'Delhi FAQs',
                                                style: TextStyle(
                                                  color: Colors.white,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  )),
                              SizedBox(
                                width: 10,
                              ),
                              Expanded(
                                  flex: 2,
                                  child: Container(
                                    color: Colors.red,
                                    // width: 200,
                                    height: 230,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.stretch,
                                      children: [
                                        new Container(
                                          height: 230,
                                          decoration: new BoxDecoration(
                                            color: Colors.black,
                                            image: new DecorationImage(
                                              fit: BoxFit.cover,
                                              colorFilter: new ColorFilter.mode(
                                                  Colors.black.withOpacity(0.1),
                                                  BlendMode.dstATop),
                                              image: new AssetImage(
                                                "assets/imag/1.jpg",
                                              ),
                                            ),
                                          ),
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Icon(
                                                Icons.healing_rounded,
                                                color: Colors.white,
                                                size: 20,
                                              ),
                                              new Text(
                                                'Heritage Walks',
                                                style: TextStyle(
                                                  color: Colors.white,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  )),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigation(),
    );
  }
}
