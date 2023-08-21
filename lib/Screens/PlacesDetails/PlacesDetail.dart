// ignore_for_file: must_be_immutable

import 'dart:io';

import 'package:flutter/material.dart';
import 'package:kurukshetra_tour/Models/Places.dart';
import 'package:kurukshetra_tour/Screens/Footer/footer.dart';
import 'package:kurukshetra_tour/Screens/Header/Drawer.dart';
import 'package:kurukshetra_tour/Screens/Header/appbar.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:webview_flutter/webview_flutter.dart';

class PlacesDetail extends StatefulWidget {
  List<Places> data;
  int index;
  PlacesDetail({required this.data, required this.index});

  @override
  State<PlacesDetail> createState() => _PlacesDetailState();
}

class _PlacesDetailState extends State<PlacesDetail> {
  bool isLoading = true;
  final _key = UniqueKey();
  void lanuchURL1() {
    launch("https://kurukshetra.gov.in/");
  }

  @override
  void initState() {
    super.initState();
    // Enable virtual display.
    if (Platform.isAndroid) WebView.platform = AndroidWebView();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: DrawerMenu(),
      appBar: Appbar(),
      body: Container(
        child: Column(children: <Widget>[
          Expanded(
            flex: 1,
            child: Column(
              // crossAxisAlignment: CrossAxisAlignment.center,
              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // LineImage(), // call class in TourAppbar.dart file
                Expanded(
                  flex: 1,
                  child: Stack(
                    children: <Widget>[
                      WebView(
                        key: _key,
                        initialUrl: widget.data[widget.index].link,
                        javascriptMode: JavascriptMode.unrestricted,
                        navigationDelegate: (NavigationRequest request) {
                          if (request.url
                              .startsWith('https://www.youtube.com/')) {
                            print('blocking navigation to $request}');
                            return NavigationDecision.prevent;
                          }
                          print('allowing navigation to $request');
                          return NavigationDecision.navigate;
                        },
                        onPageFinished: (finish) {
                          setState(() {
                            isLoading = false;
                          });
                        },
                      ),
                      isLoading
                          ? Center(
                              child: Column(
                                children: [
                                  CircularProgressIndicator(
                                    color: Colors.red[100],
                                  ),
                                  Text("Loading.......")
                                ],
                              ),
                            )
                          : Container(),
                    ],
                  ),

                  // child: Container(
                  //   child: SingleChildScrollView(
                  //     child: Column(
                  //       children: [
                  //         HeaderSinglePage(
                  //             maintitle: widget.data[widget.index].title,
                  //             headerimage: widget.data[widget.index].image),

                  //         // Container(
                  //         //     padding: EdgeInsets.only(left: 10),
                  //         //     alignment: Alignment.topLeft,
                  //         //     child: Text(
                  //         //       'Description',
                  //         //       style: TextStyle(fontSize: 16),
                  //         //     )),
                  //         // Container(
                  //         //     padding: EdgeInsets.all(10),
                  //         //     alignment: Alignment.topLeft,
                  //         //     child: Text(
                  //         //       data[index].descp,
                  //         //       style: TextStyle(fontSize: 12),
                  //         //     )),
                  //         // Container(
                  //         //     padding: EdgeInsets.only(left: 10),
                  //         //     alignment: Alignment.topLeft,
                  //         //     child: Text(
                  //         //       'Timings',
                  //         //       style: TextStyle(fontSize: 16),
                  //         //     )),
                  //         // Container(
                  //         //     padding: EdgeInsets.all(10),
                  //         //     alignment: Alignment.topLeft,
                  //         //     child: Text(
                  //         //       data[index].timing,
                  //         //       style: TextStyle(fontSize: 12),
                  //         //     )),
                  //         // Container(
                  //         //     padding: EdgeInsets.only(left: 10),
                  //         //     alignment: Alignment.topLeft,
                  //         //     child: Text(
                  //         //       'Nearest Place',
                  //         //       style: TextStyle(fontSize: 16),
                  //         //     )),
                  //         // Container(
                  //         //     padding: EdgeInsets.all(10),
                  //         //     alignment: Alignment.topLeft,
                  //         //     child: Text(
                  //         //       data[index].nearby,
                  //         //       style: TextStyle(fontSize: 12),
                  //         //     )),
                  //         // GestureDetector(
                  //         //   onTap: lanuchURL1,
                  //         //   child: Container(
                  //         //       padding: EdgeInsets.all(10),
                  //         //       alignment: Alignment.topLeft,
                  //         //       child: Text(
                  //         //           'For more details visit:' +
                  //         //               data[index].link,
                  //         //           style: TextStyle(
                  //         //             fontSize: 12,
                  //         //             color: Colors.blue,
                  //         //             fontWeight: FontWeight.bold,
                  //         //           ))),
                  //         // ),
                  //         GestureDetector(
                  //           child: Container(
                  //               padding: EdgeInsets.all(10),
                  //               alignment: Alignment.topLeft,
                  //               child: Image.network(
                  //                   "https://cdn.s3waas.gov.in/s3248e844336797ec98478f85e7626de4a/uploads/2021/10/2021101343.jpg")),
                  //         ),
                  //       ],
                  //     ),
                  //   ),
                  // ),
                ),

                // LineImage(), // call class in TourAppbar.dart file
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
