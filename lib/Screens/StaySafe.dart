// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:kurukshetra_tour/Screens/Footer/footer.dart';
import 'package:kurukshetra_tour/Screens/Header/Drawer.dart';
import 'package:kurukshetra_tour/Screens/Header/appbar.dart';

import 'Header/header.dart';



class StaySafe extends StatelessWidget {
  var mytext = TextStyle(fontSize: 14);
  @override
  Widget build(BuildContext context) {
    return
      Scaffold(
          drawer: DrawerMenu(),
          appBar: Appbar(),
          body: Container(
            child: Column(children: <Widget>[
              Expanded(
                flex: 1,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    LineImage(),
                     // call class in TourAppbar.dart file
                    Expanded(
                      flex: 1,
                      child: Container(
                        width: double.infinity,
                        child: SingleChildScrollView(
                          child: Container(
                            child: Column(
                              children: [
                                 HeaderSinglePage(maintitle:"Stay Safe",headerimage:"https://cdn.s3waas.gov.in/s3248e844336797ec98478f85e7626de4a/uploads/2019/01/2019010428.jpg"),
                                Container(
                                  margin: EdgeInsets.all(10),
                                  child: Column(
                                    children: [
                                      Container(
                                          padding: EdgeInsets.only(bottom: 20),
                                          child: Text(
                                            'Protective Measures against Covid',
                                            style: TextStyle(
                                                color: Colors.blue,
                                                fontSize: 16),
                                          )),
                                      Container(
                                        padding: EdgeInsets.all(10),
                                        child: Row(
                                          children: [
                                            Image.network(
                                              'https://cdn.s3waas.gov.in/s3248e844336797ec98478f85e7626de4a/uploads/2021/10/2021101423.jpg',
                                              width: 110,
                                            ),
                                            Container(
                                              padding: EdgeInsets.all(16),
                                              width: 240,
                                              child: Text(
                                                'Cover Your face with a mask when going out',
                                                style: mytext,
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                      Container(
                                        padding: EdgeInsets.all(10),
                                        child: Row(
                                          children: [
                                            Image.network(
                                              'https://cdn.s3waas.gov.in/s3248e844336797ec98478f85e7626de4a/uploads/2021/10/2021101456.jpg',
                                              width: 110,
                                            ),
                                            Container(
                                              padding: EdgeInsets.all(16),
                                              width: 240,
                                              child: Text(
                                                'Stay at least 1m apart from people when in public places',
                                                style: mytext,
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                      Container(
                                        padding: EdgeInsets.all(10),
                                        child: Row(
                                          children: [
                                            Image.network(
                                              'https://cdn.s3waas.gov.in/s3248e844336797ec98478f85e7626de4a/uploads/2021/10/2021101487.jpg',
                                              width: 110,
                                            ),
                                            Container(
                                              padding: EdgeInsets.all(16),
                                              width: 240,
                                              child: Text(
                                                'Keep a safe distance from anyone or sneezing',
                                                style: mytext,
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                      Container(
                                        padding: EdgeInsets.all(10),
                                        child: Row(
                                          children: [
                                            Image.network(
                                              'https://cdn.s3waas.gov.in/s3248e844336797ec98478f85e7626de4a/uploads/2021/10/2021101462-1.jpg',
                                              width: 110,
                                            ),
                                            Container(
                                              padding: EdgeInsets.all(16),
                                              width: 240,
                                              child: Text(
                                                'Avoid unnecessary visits to the market and medical facilities ',
                                                style: mytext,
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                      Container(
                                        padding: EdgeInsets.all(10),
                                        child: Row(
                                          children: [
                                            Image.network(
                                              'https://cdn.s3waas.gov.in/s3248e844336797ec98478f85e7626de4a/uploads/2021/10/2021101485.jpg',
                                              width: 110,
                                            ),
                                            Container(
                                              padding: EdgeInsets.all(16),
                                              width: 240,
                                              child: Text(
                                                'Discourage people from visiting your home',
                                                style: mytext,
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                      Container(
                                        padding: EdgeInsets.all(10),
                                        child: Row(
                                          children: [
                                            Image.network(
                                              'https://cdn.s3waas.gov.in/s3248e844336797ec98478f85e7626de4a/uploads/2021/10/2021101481.jpg',
                                              width: 110,
                                            ),
                                            Container(
                                              padding: EdgeInsets.all(16),
                                              width: 240,
                                              child: Text(
                                                "Avoid visiting other people's home",
                                                style: mytext,
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                      Container(
                                        padding: EdgeInsets.all(10),
                                        child: Row(
                                          children: [
                                            Image.network(
                                              'https://cdn.s3waas.gov.in/s3248e844336797ec98478f85e7626de4a/uploads/2021/10/2021101467.jpg',
                                              width: 110,
                                            ),
                                            Container(
                                              padding: EdgeInsets.all(16),
                                              width: 240,
                                              child: Text(
                                                "Stay home if feelings unwell",
                                                style: mytext,
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                      Container(
                                        padding: EdgeInsets.all(10),
                                        child: Row(
                                          children: [
                                            Image.network(
                                              'https://cdn.s3waas.gov.in/s3248e844336797ec98478f85e7626de4a/uploads/2021/10/2021101496.jpg',
                                              width: 110,
                                            ),
                                            Container(
                                              padding: EdgeInsets.all(16),
                                              width: 240,
                                              child: Text(
                                                "Wash your hand regularly with  soap and water",
                                                style: mytext,
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                      Container(
                                        padding: EdgeInsets.all(10),
                                        child: Row(
                                          children: [
                                            Image.network(
                                              'https://cdn.s3waas.gov.in/s3248e844336797ec98478f85e7626de4a/uploads/2021/10/2021101424.jpg',
                                              width: 110,
                                            ),
                                            Container(
                                              padding: EdgeInsets.all(16),
                                              width: 240,
                                              child: Text(
                                                "Use a hand sanitizer with at least 60% alcohol",
                                                style: mytext,
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                      Container(
                                        padding: EdgeInsets.all(10),
                                        child: Row(
                                          children: [
                                            Image.network(
                                              'https://cdn.s3waas.gov.in/s3248e844336797ec98478f85e7626de4a/uploads/2021/10/2021101464.jpg',
                                              width: 110,
                                            ),
                                            Container(
                                              padding: EdgeInsets.all(16),
                                              width: 240,
                                              child: Text(
                                                "Dont't touch your mouth, eye or nose with unWashed hands",
                                                style: mytext,
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                      Container(
                                        padding: EdgeInsets.all(10),
                                        child: Row(
                                          children: [
                                            Image.network(
                                              'https://cdn.s3waas.gov.in/s3248e844336797ec98478f85e7626de4a/uploads/2021/10/2021101437.jpg',
                                              width: 110,
                                            ),
                                            Container(
                                              padding: EdgeInsets.all(16),
                                              width: 240,
                                              child: Text(
                                                "Discard used tissues in a closed  bin immediately",
                                                style: mytext,
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                      // Container(
                                      //     padding: EdgeInsets.only(bottom: 20),
                                      //     child: Text(
                                      //       'Guideline  for traveller',
                                      //       style: TextStyle(
                                      //           color: Colors.blue,
                                      //           fontSize: 16),
                                      //     )),
                                      Container(
                                        padding: EdgeInsets.all(10),
                                        child: Row(
                                          children: [
                                            Image.network(
                                              'https://cdn.s3waas.gov.in/s3248e844336797ec98478f85e7626de4a/uploads/2021/10/2021101438.jpg',
                                              width: 110,
                                            ),
                                            Container(
                                              padding: EdgeInsets.all(16),
                                              width: 240,
                                              child: Text(
                                                "Cover your mouth and nose with tissues/bent elbow while caughing and sneezing",
                                                style: mytext,
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                      Container(
                                        padding: EdgeInsets.all(10),
                                        child: Row(
                                          children: [
                                            Image.network(
                                              'https://cdn.s3waas.gov.in/s3248e844336797ec98478f85e7626de4a/uploads/2021/10/2021101492.jpg',
                                              width: 110,
                                            ),
                                            Container(
                                              padding: EdgeInsets.all(16),
                                              width: 240,
                                              child: Text(
                                                "Seek prompt medical attention in case of fever, cough or difficulty in breathing",
                                                style: mytext,
                                              ),
                                            )
                                          ],
                                        ),
                                      ),

                                      Container(
                                          padding: EdgeInsets.all(20),
                                          child: Text(
                                            'Guideline for traveller',
                                            style: TextStyle(
                                                color: Colors.blue,
                                                fontSize: 16),
                                          )),

                                      Container(
                                        padding: EdgeInsets.all(10),
                                        child: Row(
                                          children: [
                                            Image.network(
                                              'https://cdn.s3waas.gov.in/s3248e844336797ec98478f85e7626de4a/uploads/2021/10/2021101489.jpg',
                                              width: 110,
                                            ),
                                            Container(
                                              padding: EdgeInsets.all(16),
                                              width: 240,
                                              child: Text(
                                                "Avoid close contact with fellow travellers and maintain social distancing ",
                                                style: mytext,
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                      Container(
                                        padding: EdgeInsets.all(10),
                                        child: Row(
                                          children: [
                                            Image.network(
                                              'https://cdn.s3waas.gov.in/s3248e844336797ec98478f85e7626de4a/uploads/2021/10/2021101458.jpg',
                                              width: 110,
                                            ),
                                            Container(
                                              padding: EdgeInsets.all(16),
                                              width: 240,
                                              child: Text(
                                                "Wear face masks while boarding and travelling ",
                                                style: mytext,
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                      Container(
                                        padding: EdgeInsets.all(10),
                                        child: Row(
                                          children: [
                                            Image.network(
                                              'https://cdn.s3waas.gov.in/s3248e844336797ec98478f85e7626de4a/uploads/2021/10/2021101462.jpg',
                                              width: 110,
                                            ),
                                            Container(
                                              padding: EdgeInsets.all(16),
                                              width: 240,
                                              child: Text(
                                                "Maintain hand, repiratory and enviroment hygiene at all times ",
                                                style: mytext,
                                              ),
                                            )
                                          ],
                                        ),
                                      ),

                                      Container(
                                        padding: EdgeInsets.all(10),
                                        child: Row(
                                          children: [
                                            Image.network(
                                              'https://cdn.s3waas.gov.in/s3248e844336797ec98478f85e7626de4a/uploads/2021/10/2021101412.jpg',
                                              width: 110,
                                            ),
                                            Container(
                                              padding: EdgeInsets.all(16),
                                              width: 240,
                                              child: Text(
                                                " Inform the airport/railway authorities in case of cough,fever or difficulty in breathing",
                                                style: mytext,
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                      Container(
                                        padding: EdgeInsets.all(10),
                                        child: Row(
                                          children: [
                                            Image.network(
                                              'https://cdn.s3waas.gov.in/s3248e844336797ec98478f85e7626de4a/uploads/2021/10/2021101434.jpg',
                                              width: 110,
                                            ),
                                            Container(
                                              padding: EdgeInsets.all(16),
                                              width: 240,
                                              child: Text(
                                                " Prefer to use  bottled water and avoid places with chances of food contaimination",
                                                style: mytext,
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                      Container(
                                        padding: EdgeInsets.all(10),
                                        child: Row(
                                          children: [
                                            Image.network(
                                              'https://cdn.s3waas.gov.in/s3248e844336797ec98478f85e7626de4a/uploads/2021/10/2021101497.jpg',
                                              width: 110,
                                            ),
                                            Container(
                                              padding: EdgeInsets.all(16),
                                              width: 240,
                                              child: Text(
                                                " Undergo mandatory quarantine for 14-days after reaching the city",
                                                style: mytext,
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                      Container(
                                        padding: EdgeInsets.all(10),
                                        child: Row(
                                          children: [
                                            Image.network(
                                              'https://cdn.s3waas.gov.in/s3248e844336797ec98478f85e7626de4a/uploads/2021/10/2021101454.jpg',
                                              width: 110,
                                            ),
                                            Container(
                                              padding: EdgeInsets.all(16),
                                              width: 240,
                                              child: Text(
                                                " At the  airport, provide your travel itinerary and submit a 'Self-reporting Form' to the Airport Health officer",
                                                style: mytext,
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
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
              BottomNavigation()); // call class in TourAppbar.dart fil
        
  }
}


 

