// ignore_for_file: must_be_immutable

import 'dart:ui';

import 'package:flutter/material.dart';

import 'package:kurukshetra_tour/Models/Methods/getMainScreen.dart';
import 'package:kurukshetra_tour/Models/Places.dart';

import 'package:kurukshetra_tour/Screens/Error/404.dart';

import 'package:kurukshetra_tour/Screens/Header/appbar.dart';
import 'package:kurukshetra_tour/Screens/Header/header.dart';
import 'package:kurukshetra_tour/Screens/PlacesDetails/PlacesDetail.dart';
import 'package:transparent_image/transparent_image.dart';

List<Places> data = [];

String maintitle = "";
String headerimage = "";
const color = const Color(0xffb796d5f);

class PlacesGrid extends StatefulWidget {
  final String title;
  final String image;
  String id;
  PlacesGrid({required this.title, required this.image, required this.id});

  @override
  State<PlacesGrid> createState() => _PlacesGridState();
}

class _PlacesGridState extends State<PlacesGrid> {
  @override
  void initState() {
    // TODO: implement initState
    maintitle = widget.title;
    headerimage = widget.image;
    getdate();
    super.initState();
  }

  Future<List<Places>> getdate() async {
    var futuredata = await getMainScreen().fetchplacesbyid(widget.id);

    data = futuredata;
    return futuredata;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        drawer: Drawer(),
        appBar: Appbar(),
        body: Column(
          children: [
            LineImage(),
            HeaderSinglePage(maintitle: maintitle, headerimage: headerimage),
            Expanded(
              child: FutureBuilder<List<Places>>(
                  future: getdate(),
                  builder: (context, snaphost) {
                    if (snaphost.hasData) {
                      return GridView.builder(
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            childAspectRatio: 1.4,
                          ),
                          itemCount: snaphost.data!.length,
                          itemBuilder: (BuildContext ctx, index) {
                            return MyContent(
                              id: index,
                              // title: snaphost.data![index].title,
                              // myImage: snaphost.data![index].image,
                              // id: snaphost.data![index].id,
                            );
                          });
                    }
                    if (snaphost.hasError) {
                      return error404();
                    }

                    return Center(child: CircularProgressIndicator());
                  }),
            ),
            LineImage(),
            BottomNavigation()
          ],
        ));
  }
}

class MyContent extends StatelessWidget {
  // String title;
  // final String myImage;
  // String desc;
  // String timeing;
  // String map;
  // String nearby;
  // String link;
  late int id;

  MyContent({
    required this.id,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => PlacesDetail(
                        data: data,
                        index: id,
                      ))
                      );
        },
        child: Padding(
          padding: const EdgeInsets.only(left: 8.0, right: 8.0),
          child: Column(
            children: [
              FadeInImage.memoryNetwork(
                placeholder: kTransparentImage,
                image: data[id].image,
                fit: BoxFit.fill,
                width: MediaQuery.of(context).size.width / 2,
                height: MediaQuery.of(context).size.height / 8,
              ),
              // Image.network(

              //   myImage,
              //   fit: BoxFit.fill,
              //   width: 400,
              //   height: 100,
              // ),
              Wrap(children: [
                Align(
                  alignment: Alignment.bottomLeft,
                  child: Text(
                    data[id].title,
                    textAlign: TextAlign.start,
                    maxLines: 2,
                    overflow: TextOverflow.clip,
                    style: TextStyle(fontSize: 14),
                  ),
                ),
              ]),
            ],
          ),
        ));
  }
}
