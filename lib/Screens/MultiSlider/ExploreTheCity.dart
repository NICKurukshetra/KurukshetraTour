// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import 'package:kurukshetra_tour/Models/Methods/getMainScreen.dart';
import 'package:kurukshetra_tour/Models/MultiStyle.dart';
import 'package:kurukshetra_tour/Models/Places.dart';
import 'package:kurukshetra_tour/Screens/Error/404.dart';
import 'package:kurukshetra_tour/Screens/Header/Drawer.dart';
import 'package:kurukshetra_tour/Screens/Header/appbar.dart';
import 'package:kurukshetra_tour/Screens/Header/header.dart';
import 'package:kurukshetra_tour/Screens/PlacesDetails/PlacesDetail.dart';
import 'package:kurukshetra_tour/Screens/TourMain.dart';

class ExploreTheCity extends StatefulWidget {
  final String title;
  final String image;
  String id;

  ExploreTheCity({required this.title, required this.image, required this.id});

  @override
  State<ExploreTheCity> createState() => _ExploreTheCityState();
}

class _ExploreTheCityState extends State<ExploreTheCity> {
  Future<List<MultiStyle>> getdata() async {
    var futuredata = await getMainScreen().fetchMultistyle(widget.id);

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
                                                      onTap: () {
                                                        Navigator.push(
                                                            context,
                                                            MaterialPageRoute(
                                                                builder:
                                                                    (context) =>
                                                                        PlacesDetail(
                                                                          data: snapshot
                                                                              .data!
                                                                              .toList(),
                                                                          index:
                                                                              index,
                                                                        )));
                                                      },
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
                                                            loadingBuilder:
                                                                (context, child,
                                                                    loadingProgress) {
                                                              if (loadingProgress ==
                                                                  null)
                                                                return child;
                                                              return Center(
                                                                  child:
                                                                      SizedBox(
                                                                width: 20,
                                                                height: 20,
                                                                child:
                                                                    CircularProgressIndicator(
                                                                  color: Colors
                                                                      .black,
                                                                  strokeWidth:
                                                                      2,
                                                                ),
                                                              ));
                                                              // You can use LinearProgressIndicator or CircularProgressIndicator instead
                                                            },
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
