// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:kurukshetra_tour/Models/Places.dart';
import 'package:kurukshetra_tour/Screens/Header/appbar.dart';
import 'package:kurukshetra_tour/Screens/Header/header.dart';



class PlacesDetail extends StatelessWidget {

  List<Places> data=[];
  int index;
  PlacesDetail({required this.data,required this.index});
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
                              HeaderSinglePage(title: data[index].title,image: data[index].image,),
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
                                    data[index].descp,
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
                                    data[index].timing,
                                    style: TextStyle(fontSize: 12),
                                  )),
                              Container(
                                  padding: EdgeInsets.only(left: 10),
                                  alignment: Alignment.topLeft,
                                  child: Text(
                                    'Nearest Place',
                                    style: TextStyle(fontSize: 16),
                                  )),
                              Container(
                                  padding: EdgeInsets.all(10),
                                  alignment: Alignment.topLeft,
                                  child: Text(
                                    data[index].nearby,
                                    style: TextStyle(fontSize: 12),
                                  )),
                              Container(
                                  padding: EdgeInsets.all(10),
                                  alignment: Alignment.topLeft,
                                  child: Text(
                                      'For more details visit:'+data[index].link,
                                      style: TextStyle(
                                        fontSize: 12,
                                        color: Colors.blue,
                                        fontWeight: FontWeight.bold,
                                      ))),
                              GestureDetector(
                                child: Container(
                                    padding: EdgeInsets.all(10),
                                    alignment: Alignment.topLeft,
                                    child: Image.network("https://cdn.s3waas.gov.in/s3248e844336797ec98478f85e7626de4a/uploads/2021/10/2021101343.jpg")),
                              ),
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
