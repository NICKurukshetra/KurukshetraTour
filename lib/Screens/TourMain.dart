import 'dart:ui';

import 'package:dotted_line/dotted_line.dart';

import 'package:flutter/material.dart';
import 'package:kurukshetra_tour/Models/Methods/getMainScreen.dart';
import 'package:kurukshetra_tour/Models/ModMainApp.dart';


import 'package:kurukshetra_tour/Screens/Error/404.dart';
import 'package:kurukshetra_tour/Screens/Footer/footer.dart';
import 'package:kurukshetra_tour/Screens/Header/Drawer.dart';

import 'package:kurukshetra_tour/Screens/Header/appbar.dart';

import 'package:kurukshetra_tour/Screens/Header/header.dart';

import 'package:kurukshetra_tour/Screens/Route/myRoute.dart';

List<MainScreen> popmap = [];

class TourMainScreen extends StatefulWidget {
  const TourMainScreen({Key? key}) : super(key: key);

  @override
  _TourMainScreenState createState() => _TourMainScreenState();
}

const color = const Color(0xffb796d5f);

//final Color color = HexColor.fromHex('#');
class _TourMainScreenState extends State<TourMainScreen> {
  @override
  void initState() {
    // TODO: implement initState

    super.initState();
  }

  Future<List<MainScreen>> getdata() async {
    var futuredata = await getMainScreen().fetchmaindata();
    popmap = futuredata;
    return futuredata;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: DrawerMenu(),
      appBar: Appbar(),
      body: Container(
        color: color,
        child: Column(children: <Widget>[
          LineImage(),
          // call class in TourAppbar.dart file
          FutureBuilder<List<MainScreen>>(
            future: getdata(),
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return Expanded(
                  child: ListView.builder(
                      physics: ScrollPhysics(),
                      itemCount: snapshot.data!.length,
                      itemBuilder: (BuildContext context, Index) {
                        return MyContent(
                          route: myRoute(
                            type: int.parse(snapshot.data![Index].type),
                            index: Index,
                            srno: snapshot.data![Index].id.toString(),
                          ),
                          myImage: snapshot.data![Index].image,
                          title: snapshot.data![Index].title,
                          icon: snapshot.data![Index].icon,
                          id: 1,
                          type: "1",
                        );
                      }),
                );
              } else if (snapshot.hasError) {
                return error404();
              }

              // By default, show a loading spinner.
              return Text("");
            },
          ),
          LineImage(),
          // call class in TourAppbar.dart file
        ]),
      ),
      bottomNavigationBar: BottomNavigation(),
    );
  }
}

class MyContent extends StatelessWidget {
  String title;
  String myImage;
  String icon;
  String type;
  int id;
  Widget route;

  MyContent(
      {required this.title,
      required this.icon,
      required this.myImage,
      required this.id,
      required this.type,
      required this.route});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) => route));
      },
      child: Column(
        children: [
          ListTile(
            leading: Image.network(
              icon,
              height: 30,
              color: Colors.white,
            ),
            title: Text(
              title,
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
          ),
          Container(
              height: 150,
              //padding: EdgeInsets.all(10),
              child: Image.network(
                myImage,
                fit: BoxFit.cover,
                loadingBuilder: (context, child, loadingProgress) {
                  if (loadingProgress == null) return child;
                  return Center(
                      child: SizedBox(
                    width: 30,
                    height: 30,
                    child: CircularProgressIndicator(
                      strokeWidth: 2,
                    ),
                  ));
                  // You can use LinearProgressIndicator or CircularProgressIndicator instead
                },
              )
              // FadeInImage.memoryNetwork(
              //   placeholder: kTransparentImage,
              //   image: myImage,
              //   fit: BoxFit.cover,
              // )

              // Image.asset(
              //   'assets/'+image,
              //   fit: BoxFit.cover,
              //   width: double.infinity,
              // ),
              ),
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: DottedLine(
              direction: Axis.horizontal,
              lineLength: double.infinity,
              lineThickness: 2.0,
              dashLength: 4.0,
              dashColor: Colors.white,
              dashRadius: 0.0,
              dashGapLength: 4.0,
              dashGapColor: Colors.transparent,
              dashGapRadius: 0.0,
            ),
          ),
        ],
      ),
    );
  }
}
