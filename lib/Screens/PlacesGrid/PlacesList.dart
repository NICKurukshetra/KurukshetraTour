// ignore_for_file: must_be_immutable

import 'dart:ui';

import 'package:flutter/material.dart';

import 'package:kurukshetra_tour/Models/Methods/getMainScreen.dart';
import 'package:kurukshetra_tour/Models/Places.dart';

import 'package:kurukshetra_tour/Screens/Error/404.dart';
import 'package:kurukshetra_tour/Screens/Footer/footer.dart';
import 'package:kurukshetra_tour/Screens/Header/Drawer.dart';

import 'package:kurukshetra_tour/Screens/Header/appbar.dart';
import 'package:kurukshetra_tour/Screens/Header/header.dart';
import 'package:kurukshetra_tour/Screens/PlacesDetails/PlacesDetail.dart';

List<Places> data = [];

String maintitle = "";
String headerimage = "";
bool value = false;
const color = const Color(0xffb796d5f);

class PlacesGrid extends StatefulWidget {
  final String title;
  final String image;
  final bool svalue;
  String id;
  PlacesGrid(
      {required this.title,
      required this.image,
      required this.id,
      required this.svalue});

  @override
  State<PlacesGrid> createState() => _PlacesGridState();
}

class _PlacesGridState extends State<PlacesGrid> {
  @override
  void initState() {
    // TODO: implement initState
    maintitle = widget.title;
    headerimage = widget.image;
    value = widget.svalue;
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
        drawer: DrawerMenu(),
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
  late int id;

  MyContent({
    required this.id,
  });

  @override
  Widget build(BuildContext context) {
    return value
        ? Padding(
            padding: const EdgeInsets.all(8.0),
            child: InkWell(
              child: new Container(
                height: 230,
                decoration: new BoxDecoration(
                  color: Colors.black,
                  image: new DecorationImage(
                    fit: BoxFit.cover,
                    colorFilter: new ColorFilter.mode(
                        Colors.black.withOpacity(0.4), BlendMode.dstATop),
                    image: new NetworkImage(
                      data[id].image,
                    ),
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    data[id].icon.trim().length > 0
                        ? Image.network(
                            data[id].icon,
                            height: 30,
                            color: Colors.white,
                          )
                        : Container(),
                    Text(
                      data[id].title,
                      textAlign: TextAlign.center,
                      maxLines: 2,
                      overflow: TextOverflow.fade,
                      style: TextStyle(fontSize: 18, color: Colors.white),
                    ),
                  ],
                ),
              ),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => PlacesDetail(
                              data: data,
                              index: id,
                            )));
              },
            ),
          )
        : GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => PlacesDetail(
                            data: data,
                            index: id,
                          )));
            },
            child: Padding(
              padding: const EdgeInsets.only(left: 8.0, right: 8.0),
              child: Column(
                children: [
                  Image.network(
                    data[id].image,
                    width: MediaQuery.of(context).size.width / 2,
                    height: MediaQuery.of(context).size.height / 8,
                    fit: BoxFit.fill,
                    loadingBuilder: (context, child, loadingProgress) {
                      if (loadingProgress == null) return child;
                      return Center(
                          child: SizedBox(
                        width: 20,
                        height: 20,
                        child: CircularProgressIndicator(
                          color: Colors.black,
                          strokeWidth: 2,
                        ),
                      ));
                      // You can use LinearProgressIndicator or CircularProgressIndicator instead
                    },
                  ),
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
