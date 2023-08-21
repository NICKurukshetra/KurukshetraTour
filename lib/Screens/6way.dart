import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:kurukshetra_tour/Screens/Footer/footer.dart';
import 'package:kurukshetra_tour/Screens/Header/Drawer.dart';
import 'package:kurukshetra_tour/Screens/Header/appbar.dart';
import 'package:kurukshetra_tour/Screens/Nearby.dart';
import 'package:url_launcher/url_launcher.dart';

import 'Header/header.dart';
import 'Top10.dart';
import 'faq.dart';

class Ways extends StatelessWidget {
  const Ways({Key? key}) : super(key: key);
  void lanuchURL() {
    launch("http://103.87.24.58/kkr/Accessibility/places.pdf");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: DrawerMenu(),
      appBar: Appbar(),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.zero,
          child: Column(
            children: [
              //  LineImage(),
              HeaderSinglePage(
                  maintitle: "Discover Kurukshetra",
                  headerimage:
                      "https://cdn.s3waas.gov.in/s3248e844336797ec98478f85e7626de4a/uploads/2019/01/2019010428.jpg"),
              Container(
                margin: EdgeInsets.all(5),
                child: Container(
                  child: Row(
                    children: [
                      Expanded(
                          flex: 2,
                          child: Container(
                            // color: Colors.red,
                            // width: 200,
                            height: 230,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
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
                                        Icon(
                                          Icons.map_outlined,
                                          color: Colors.white,
                                          size: 40,
                                        ),
                                        new Text(
                                          'Places Near Me ',
                                          style: TextStyle(
                                            fontSize: 18,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => Nearby()),
                                    );
                                  },
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
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(
                                        Icons.countertops_outlined,
                                        color: Colors.white,
                                        size: 40,
                                      ),
                                      new Text(
                                        'Top 10 List',
                                        style: TextStyle(
                                          fontSize: 18,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => Top10()));
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
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(
                                        Icons.ac_unit,
                                        color: Colors.white,
                                        size: 40,
                                      ),
                                      new Text(
                                        'Plan your Tour',
                                        style: TextStyle(
                                          fontSize: 18,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                onTap: lanuchURL,
                              ),
                            ],
                          )),
                    ],
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.all(5),
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
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(
                                      Icons.person,
                                      color: Colors.white,
                                      size: 40,
                                    ),
                                    new Text(
                                      'Book a Guide',
                                      style: TextStyle(
                                        fontSize: 18,
                                        color: Colors.white,
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
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(
                                        Icons.format_quote,
                                        color: Colors.white,
                                        size: 40,
                                      ),
                                      new Text(
                                        'FAQs',
                                        style: TextStyle(
                                          fontSize: 18,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Faq()),
                                );
                              },
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
                            crossAxisAlignment: CrossAxisAlignment.stretch,
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
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(
                                        Icons.healing_rounded,
                                        color: Colors.white,
                                        size: 40,
                                      ),
                                      new Text(
                                        'Heritage Walks',
                                        style: TextStyle(
                                          fontSize: 18,
                                          color: Colors.white,
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
              //  LineImage(),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigation(),
    );
  }
}

// class Customer {
//   String text;
//   Icon icon;
//   Widget widget;

//   Customer(this.text, this.icon, this.widget);
//   Widget build(BuildContext context) {
//     return Container(child: Text("new"));
//   }
// }

