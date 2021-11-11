import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kurukshetra_tour/Screens/Footer/footer.dart';
import 'package:kurukshetra_tour/Screens/Header/Drawer.dart';
import 'package:kurukshetra_tour/Screens/Header/appbar.dart';

import 'Header/header.dart';

class Top10 extends StatelessWidget {
  const Top10({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: DrawerMenu(),
      appBar: Appbar(),
      body: SingleChildScrollView(
        child: Column(children: [
          LineImage(), // call class in TourAppbar.dart file
          HeaderSinglePage(
              maintitle: "Top 10 Kurukshetra",
              headerimage:
                  "https://cdn.s3waas.gov.in/s3248e844336797ec98478f85e7626de4a/uploads/2019/01/2019010428.jpg"),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.all(8),
                child: Container(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Expanded(
                          flex: 2,
                          child: Container(
                            color: Colors.purple[900],
                            child: Padding(
                              padding:
                                  const EdgeInsets.only(bottom: 20.0, top: 20),
                              child: InkWell(
                                child: Column(
                                  // crossAxisAlignment:
                                  //     CrossAxisAlignment.center,
                                  // mainAxisAlignment:
                                  //     MainAxisAlignment.center,
                                  children: [
                                    Icon(
                                      Icons.food_bank,
                                      color: Colors.white,
                                      size: 20,
                                    ),
                                    new Text(
                                      'Food \nExperiences',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: Colors.white,
                                      ),
                                    ),
                                  ],
                                ),
                                onTap: () {},
                              ),
                            ),
                          )),
                      SizedBox(
                        width: 8,
                      ),
                      Expanded(
                          flex: 2,
                          child: Container(
                            color: Colors.orange[200],
                            child: Padding(
                              padding:
                                  const EdgeInsets.only(bottom: 20.0, top: 20),
                              child: InkWell(
                                child: Column(
                                  crossAxisAlignment:
                                      CrossAxisAlignment.stretch,
                                  children: [
                                    Icon(
                                      Icons.map_outlined,
                                      color: Colors.white,
                                      size: 20,
                                    ),
                                    new Text(
                                      'Historical \nMonuments',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: Colors.white,
                                      ),
                                    ),
                                  ],
                                ),
                                onTap: () {},
                              ),
                            ),
                          )),
                    ],
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.all(8),
                child: Expanded(
                  flex: 4,
                  child: Container(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Expanded(
                            flex: 2,
                            child: Container(
                              color: Colors.tealAccent[700],
                              child: Padding(
                                padding: const EdgeInsets.only(
                                    bottom: 20.0, top: 20),
                                child: InkWell(
                                  child: Column(
                                    // crossAxisAlignment:
                                    //     CrossAxisAlignment.center,
                                    // mainAxisAlignment:
                                    //     MainAxisAlignment.center,
                                    children: [
                                      Icon(
                                        Icons.map_outlined,
                                        color: Colors.white,
                                        size: 20,
                                      ),
                                      new Text(
                                        'Parks & \nGardens',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          color: Colors.white,
                                        ),
                                      ),
                                    ],
                                  ),
                                  onTap: () {},
                                ),
                              ),
                            )),
                        SizedBox(
                          width: 8,
                        ),
                        Expanded(
                            flex: 2,
                            child: Container(
                              color: Colors.red[900],
                              child: Padding(
                                padding: const EdgeInsets.only(
                                    bottom: 20.0, top: 20),
                                child: InkWell(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.stretch,
                                    children: [
                                      Icon(
                                        Icons.shopping_basket_outlined,
                                        color: Colors.white,
                                        size: 20,
                                      ),
                                      new Text(
                                        'Shopping \nDestinations',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          color: Colors.white,
                                        ),
                                      ),
                                    ],
                                  ),
                                  onTap: () {},
                                ),
                              ),
                            )),
                      ],
                    ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.all(8),
                child: Container(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Expanded(
                          flex: 2,
                          child: Container(
                            color: Colors.greenAccent[700],
                            child: Padding(
                              padding:
                                  const EdgeInsets.only(bottom: 20.0, top: 20),
                              child: InkWell(
                                child: Column(
                                  // crossAxisAlignment:
                                  //     CrossAxisAlignment.center,
                                  // mainAxisAlignment:
                                  //     MainAxisAlignment.center,
                                  children: [
                                    Icon(
                                      Icons.map_outlined,
                                      color: Colors.white,
                                      size: 20,
                                    ),
                                    new Text(
                                      'Spiritual \nAbodes',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: Colors.white,
                                      ),
                                    ),
                                  ],
                                ),
                                onTap: () {},
                              ),
                            ),
                          )),
                      SizedBox(
                        width: 10,
                      ),
                      Expanded(
                          flex: 2,
                          child: Container(
                              // color: Colors.black,
                              // child: Padding(
                              //   padding: const EdgeInsets.only(
                              //       bottom: 20.0, top: 20),
                              //   child: InkWell(
                              //     child: Column(
                              //       crossAxisAlignment:
                              //           CrossAxisAlignment.stretch,
                              //       children: [
                              //         Icon(
                              //           Icons.map_outlined,
                              //           color: Colors.white,
                              //           size: 20,
                              //         ),
                              //         new Text(
                              //           'Places \nNear Me ',
                              //           textAlign: TextAlign.center,
                              //           style: TextStyle(
                              //             color: Colors.white,
                              //           ),
                              //         ),
                              //       ],
                              //     ),
                              //     onTap: () {},
                              //   ),
                              // ),
                              )),
                    ],
                  ),
                ),
              ),
            ],
          ),
          LineImage()
        ]),
      ),
      bottomNavigationBar: BottomNavigation(),
    );
  }
}
