import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kurukshetra_tour/Screens/Footer/footer.dart';
import 'package:kurukshetra_tour/Screens/Header/Drawer.dart';
import 'package:kurukshetra_tour/Screens/Header/appbar.dart';

import 'Header/header.dart';

class PlanyourTour extends StatelessWidget {
  const PlanyourTour({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: DrawerMenu(),
      appBar: Appbar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Container(
            child: Column(
              children: [
              //  LineImage(),
                HeaderSinglePage(
                    maintitle: "Plan Your Tour",
                    headerimage:
                        "https://cdn.s3waas.gov.in/s3248e844336797ec98478f85e7626de4a/uploads/2018/06/2018060670.jpg"),
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
                                    InkWell(
                                      child: new Container(
                                        height: 230,
                                        decoration: new BoxDecoration(
                                          color: Colors.black,
                                          image: new DecorationImage(
                                            fit: BoxFit.cover,
                                            colorFilter: new ColorFilter.mode(
                                                Colors.black.withOpacity(0.4),
                                                BlendMode.dstATop),
                                            image: new AssetImage(
                                              "assets/images/01.jpg",
                                            ),
                                          ),
                                        ),
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Container(
                                              alignment: Alignment.center,
                                              child: new RichText(
                                                text: TextSpan(
                                                  children: const <TextSpan>[
                                                    TextSpan(
                                                        text: 'Half ',
                                                        style: TextStyle(
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            fontSize: 20,
                                                            color:
                                                                Colors.white)),
                                                    TextSpan(
                                                        text: ' Day',
                                                        style: TextStyle(
                                                            color:
                                                                Colors.white)),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      onTap: () {},
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
                                  InkWell(
                                    child: Container(
                                      width: double.infinity,
                                      height: 110,
                                      decoration: new BoxDecoration(
                                        color: Colors.black,
                                        image: new DecorationImage(
                                          fit: BoxFit.cover,
                                          colorFilter: new ColorFilter.mode(
                                              Colors.black.withOpacity(0.4),
                                              BlendMode.dstATop),
                                          image: new AssetImage(
                                            "assets/images/02.jpg",
                                          ),
                                        ),
                                      ),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Container(
                                            alignment: Alignment.center,
                                            child: new RichText(
                                              text: TextSpan(
                                                children: const <TextSpan>[
                                                  TextSpan(
                                                      text: 'One ',
                                                      style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          fontSize: 20,
                                                          color: Colors.white)),
                                                  TextSpan(
                                                      text: ' Day',
                                                      style: TextStyle(
                                                          color: Colors.white)),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    onTap: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  PlanyourTour()));
                                    },
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  InkWell(
                                    child: Container(
                                      width: double.infinity,
                                      height: 110,
                                      decoration: new BoxDecoration(
                                        color: Colors.black,
                                        image: new DecorationImage(
                                          fit: BoxFit.cover,
                                          colorFilter: new ColorFilter.mode(
                                              Colors.black.withOpacity(0.4),
                                              BlendMode.dstATop),
                                          image: new AssetImage(
                                            "assets/images/03.jpg",
                                          ),
                                        ),
                                      ),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Container(
                                            alignment: Alignment.center,
                                            child: new RichText(
                                              text: TextSpan(
                                                children: const <TextSpan>[
                                                  TextSpan(
                                                      text: 'Two ',
                                                      style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          fontSize: 20,
                                                          color: Colors.white)),
                                                  TextSpan(
                                                      text: ' Day',
                                                      style: TextStyle(
                                                          color: Colors.white)),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    onTap: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  PlanyourTour()));
                                    },
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
                                  InkWell(
                                    child: Container(
                                      width: double.infinity,
                                      height: 110,
                                      decoration: new BoxDecoration(
                                        color: Colors.black,
                                        image: new DecorationImage(
                                          fit: BoxFit.cover,
                                          colorFilter: new ColorFilter.mode(
                                              Colors.black.withOpacity(0.4),
                                              BlendMode.dstATop),
                                          image: new AssetImage(
                                            "assets/images/05.jpg",
                                          ),
                                        ),
                                      ),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          new Container(
                                            alignment: Alignment.center,
                                            child: new RichText(
                                              text: TextSpan(
                                                children: const <TextSpan>[
                                                  TextSpan(
                                                      text: 'Three ',
                                                      style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          fontSize: 20,
                                                          color: Colors.white)),
                                                  TextSpan(
                                                      text: 'Day',
                                                      style: TextStyle(
                                                          color: Colors.white)),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    onTap: () {},
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  InkWell(
                                    child: Container(
                                      width: double.infinity,
                                      height: 110,
                                      decoration: new BoxDecoration(
                                        color: Colors.black,
                                        image: new DecorationImage(
                                          fit: BoxFit.cover,
                                          colorFilter: new ColorFilter.mode(
                                              Colors.black.withOpacity(0.4),
                                              BlendMode.dstATop),
                                          image: new AssetImage(
                                            "assets/images/06.jpg",
                                          ),
                                        ),
                                      ),
                                      child: Center(
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Container(
                                              alignment: Alignment.center,
                                              child: new RichText(
                                                text: TextSpan(
                                                  children: const <TextSpan>[
                                                    TextSpan(
                                                        text: 'Five ',
                                                        style: TextStyle(
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            fontSize: 20,
                                                            color:
                                                                Colors.white)),
                                                    TextSpan(
                                                        text: 'Day',
                                                        style: TextStyle(
                                                            color:
                                                                Colors.white)),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    onTap: () {},
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
                                    InkWell(
                                      child: new Container(
                                        height: 230,
                                        decoration: new BoxDecoration(
                                          color: Colors.black,
                                          image: new DecorationImage(
                                            fit: BoxFit.cover,
                                            colorFilter: new ColorFilter.mode(
                                                Colors.black.withOpacity(0.4),
                                                BlendMode.dstATop),
                                            image: new AssetImage(
                                              "assets/images/07.jpg",
                                            ),
                                          ),
                                        ),
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Container(
                                              alignment: Alignment.center,
                                              child: new RichText(
                                                text: TextSpan(
                                                  children: const <TextSpan>[
                                                    TextSpan(
                                                        text: 'Six ',
                                                        style: TextStyle(
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            fontSize: 20,
                                                            color:
                                                                Colors.white)),
                                                    TextSpan(
                                                        text: 'Day',
                                                        style: TextStyle(
                                                            color:
                                                                Colors.white)),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      onTap: () {},
                                    ),
                                  ],
                                ),
                              )),
                        ],
                      ),
                    ),
                  ),
                ),
              //  LineImage(),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigation(),
    );
  }
}

// class PlanyourTour extends StatelessWidget {
//   const PlanyourTour({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       drawer: DrawerMenu(),
//       appBar: Appbar(),
//       body: SingleChildScrollView(
//         child: Column(children: [
//           LineImage(), // call class in TourAppbar.dart file
//           HeaderSinglePage(
//             headerimage: '',
//             maintitle: '',
//           ),
//           Padding(
//             padding: const EdgeInsets.all(8.0),
//             child: Container(
//                 child: Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 Container(
//                   width: 200,
//                   height: 200,
//                   //color: Colors.black,
//                   decoration: new BoxDecoration(
//                     color: Colors.black,
//                     image: new DecorationImage(
//                       fit: BoxFit.cover,
//                       colorFilter: new ColorFilter.mode(
//                           Colors.black.withOpacity(0.4), BlendMode.dstATop),
//                       image: new AssetImage(
//                         "assets/imag/1.jpg",
//                       ),
//                     ),
//                   ),
//                   child: Container(
//                     alignment: Alignment.center,
//                     child: new RichText(
//                       text: TextSpan(
//                         children: const <TextSpan>[
//                           TextSpan(
//                               text: 'Half',
//                               style: TextStyle(
//                                   fontWeight: FontWeight.bold,
//                                   fontSize: 20,
//                                   color: Colors.white)),
//                           TextSpan(
//                               text: 'Day',
//                               style: TextStyle(color: Colors.white)),
//                         ],
//                       ),
//                     ),
//                   ),
//                 ),
//                 SizedBox(
//                   width: 20,
//                 ),
//                 Container(
//                   width: 200,
//                   height: 200,
//                   child: Column(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [
//                       Container(
//                         width: 200,
//                         height: 90,
//                         decoration: new BoxDecoration(
//                           color: Colors.black,
//                           image: new DecorationImage(
//                             fit: BoxFit.cover,
//                             colorFilter: new ColorFilter.mode(
//                                 Colors.black.withOpacity(0.3),
//                                 BlendMode.dstATop),
//                             image: new AssetImage(
//                               "assets/imag/1.jpg",
//                             ),
//                           ),
//                         ),
//                         child: Container(
//                           alignment: Alignment.center,
//                           child: new RichText(
//                             text: TextSpan(
//                               children: const <TextSpan>[
//                                 TextSpan(
//                                     text: 'One ',
//                                     style: TextStyle(
//                                         fontWeight: FontWeight.bold,
//                                         fontSize: 20,
//                                         color: Colors.white)),
//                                 TextSpan(
//                                     text: 'Day',
//                                     style: TextStyle(color: Colors.white)),
//                               ],
//                             ),
//                           ),
//                         ),
//                       ),
//                       Container(
//                         width: 200,
//                         height: 90,
//                         // color: Colors.black,
//                         decoration: new BoxDecoration(
//                           color: Colors.black,
//                           image: new DecorationImage(
//                             fit: BoxFit.cover,
//                             colorFilter: new ColorFilter.mode(
//                                 Colors.black.withOpacity(0.3),
//                                 BlendMode.dstATop),
//                             image: new AssetImage(
//                               "assets/imag/1.jpg",
//                             ),
//                           ),
//                         ),
//                         child: Container(
//                           alignment: Alignment.center,
//                           child: new RichText(
//                             text: TextSpan(
//                               children: const <TextSpan>[
//                                 TextSpan(
//                                     text: 'Two ',
//                                     style: TextStyle(
//                                         fontWeight: FontWeight.bold,
//                                         fontSize: 20,
//                                         color: Colors.white)),
//                                 TextSpan(
//                                     text: 'Day',
//                                     style: TextStyle(color: Colors.white)),
//                               ],
//                             ),
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               ],
//             )),
//           ),
//           Padding(
//             padding: const EdgeInsets.all(5.0),
//             child: Container(
//                 child: Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 Container(
//                   width: 200,
//                   height: 200,
//                   child: Column(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [
//                       Container(
//                         width: 200,
//                         height: 90,
//                         decoration: new BoxDecoration(
//                           color: Colors.black,
//                           image: new DecorationImage(
//                             fit: BoxFit.cover,
//                             colorFilter: new ColorFilter.mode(
//                                 Colors.black.withOpacity(0.3),
//                                 BlendMode.dstATop),
//                             image: new AssetImage(
//                               "assets/imag/1.jpg",
//                             ),
//                           ),
//                         ),
//                         child: Container(
//                           alignment: Alignment.center,
//                           child: new RichText(
//                             text: TextSpan(
//                               children: const <TextSpan>[
//                                 TextSpan(
//                                     text: 'Three ',
//                                     style: TextStyle(
//                                         fontWeight: FontWeight.bold,
//                                         fontSize: 20,
//                                         color: Colors.white)),
//                                 TextSpan(
//                                     text: 'Day',
//                                     style: TextStyle(color: Colors.white)),
//                               ],
//                             ),
//                           ),
//                         ),
//                       ),
//                       Container(
//                         width: 200,
//                         height: 90,
//                         // color: Colors.black,
//                         decoration: new BoxDecoration(
//                           color: Colors.black,
//                           image: new DecorationImage(
//                             fit: BoxFit.cover,
//                             colorFilter: new ColorFilter.mode(
//                                 Colors.black.withOpacity(0.3),
//                                 BlendMode.dstATop),
//                             image: new AssetImage(
//                               "assets/imag/1.jpg",
//                             ),
//                           ),
//                         ),
//                         child: Container(
//                           alignment: Alignment.center,
//                           child: new RichText(
//                             text: TextSpan(
//                               children: const <TextSpan>[
//                                 TextSpan(
//                                     text: 'Five ',
//                                     style: TextStyle(
//                                         fontWeight: FontWeight.bold,
//                                         fontSize: 20,
//                                         color: Colors.white)),
//                                 TextSpan(
//                                     text: 'Day',
//                                     style: TextStyle(color: Colors.white)),
//                               ],
//                             ),
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//                 SizedBox(
//                   width: 20,
//                 ),
//                 Container(
//                   width: 200,
//                   height: 200,
//                   //color: Colors.black,
//                   decoration: new BoxDecoration(
//                     color: Colors.black,
//                     image: new DecorationImage(
//                       fit: BoxFit.cover,
//                       colorFilter: new ColorFilter.mode(
//                           Colors.black.withOpacity(0.3), BlendMode.dstATop),
//                       image: new AssetImage(
//                         "assets/imag/1.jpg",
//                       ),
//                     ),
//                   ),
//                   child: Container(
//                     alignment: Alignment.center,
//                     child: new RichText(
//                       text: TextSpan(
//                         children: const <TextSpan>[
//                           TextSpan(
//                               text: 'Six ',
//                               style: TextStyle(
//                                   fontWeight: FontWeight.bold,
//                                   fontSize: 20,
//                                   color: Colors.white)),
//                           TextSpan(
//                               text: 'Day',
//                               style: TextStyle(color: Colors.white)),
//                         ],
//                       ),
//                     ),
//                   ),
//                 ),
//               ],
//             )),
//           ),
//         ]),
//       ),
//       bottomNavigationBar: BottomNavigation(),
//     );
//   }
// }

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
