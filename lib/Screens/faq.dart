import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:kurukshetra_tour/Screens/Footer/footer.dart';
import 'package:kurukshetra_tour/Screens/Header/header.dart';

import 'Header/appbar.dart';

class Faq extends StatelessWidget {
  const Faq({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //drawer: Drawer(),
      appBar: Appbar(),

      //title: ThreeDotMenu(),
      body: Container(
        child: Column(
          children: [
          //  LineImage(), // call class in TourAppbar.dart file
            HeaderSinglePage(
                maintitle: "Frequently Asked Questions",
                headerimage:
                    "https://cdn.s3waas.gov.in/s3248e844336797ec98478f85e7626de4a/uploads/2018/06/2018060670.jpg"),

            Expanded(
              child: Container(
                margin: EdgeInsets.all(18),
                child: ListView(
                  children: ListTile.divideTiles(
                      color: Colors.brown,
                      //          <-- ListTile.divideTiles
                      context: context,
                      tiles: [
                        ListTile(
                          trailing: Icon(
                            CupertinoIcons.right_chevron,
                            color: Colors.red,
                          ),
                          title: Text('Weather & Seasons'),
                          // onTap: () {
                          //   Navigator.push(
                          //       context,
                          //       MaterialPageRoute(
                          //           builder: (context) => Top10()));
                          // }
                        ),
                        ListTile(
                          trailing: Icon(
                            CupertinoIcons.right_chevron,
                            color: Colors.red,
                          ),
                          title: Text('People & Society'),
                          // onTap: () {
                          //   Navigator.push(
                          //       context,
                          //       MaterialPageRoute(
                          //           builder: (context) => Top10()));
                          // }
                        ),
                        ListTile(
                          trailing: Icon(
                            CupertinoIcons.right_chevron,
                            color: Colors.red,
                          ),
                          title: Text('Governments & Departments'),
                          // onTap: () {
                          //   Navigator.push(
                          //       context,
                          //       MaterialPageRoute(
                          //           builder: (context) => Top10()));
                          // }
                        ),
                        ListTile(
                          trailing: Icon(
                            CupertinoIcons.right_chevron,
                            color: Colors.red,
                          ),
                          title: Text('Geography & Environments'),
                          // onTap: () {
                          //   Navigator.push(
                          //       context,
                          //       MaterialPageRoute(
                          //           builder: (context) => Top10()));
                          // }
                        ),
                        ListTile(
                          trailing: Icon(
                            CupertinoIcons.right_chevron,
                            color: Colors.red,
                          ),
                          title: Text('Culture & Festivals'),
                          // onTap: () {
                          //   Navigator.push(
                          //       context,
                          //       MaterialPageRoute(
                          //           builder: (context) => Top10()));
                          // }
                        ),
                        ListTile(
                          trailing: Icon(
                            CupertinoIcons.right_chevron,
                            color: Colors.red,
                          ),
                          title: Text('Safery & Emergency'),
                          // onTap: () {
                          //   Navigator.push(
                          //       context,
                          //       MaterialPageRoute(
                          //           builder: (context) => Top10()));
                          // }
                        ),
                        ListTile(
                          trailing: Icon(
                            CupertinoIcons.right_chevron,
                            color: Colors.red,
                          ),
                          title: Text('Hospitals & Pharmacies'),

                          // onTap: () {
                          //   Navigator.push(
                          //       context,
                          //       MaterialPageRoute(
                          //           builder: (context) => Top10()));
                          // }
                        ),
                        ListTile(
                          trailing: Icon(
                            CupertinoIcons.right_chevron,
                            color: Colors.red,
                          ),
                          title: Text('Currency & Exchange'),
                          // onTap: () {
                          //   Navigator.push(
                          //       context,
                          //       MaterialPageRoute(
                          //           builder: (context) => Top10()));
                          // }
                        ),
                      ]).toList(),
                ),
              ),
            ),
          //  LineImage(),
          ],
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

