import 'package:flutter/material.dart';
import 'package:kurukshetra_tour/Screens/TourMain.dart';
import 'package:kurukshetra_tour/Screens/contact.dart';
import 'package:kurukshetra_tour/Screens/feedback.dart';

import '../Disclaimer.dart';
import '../StaySafe.dart';

class DrawerMenu extends StatefulWidget {
  @override
  _DrawerMenuState createState() => _DrawerMenuState();
}

class _DrawerMenuState extends State<DrawerMenu> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          DrawerHeader(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  width: 90.0,
                  height: 90.0,
                  child: Image.network(
                      'https://cdn.s3waas.gov.in/s3248e844336797ec98478f85e7626de4a/uploads/2020/07/2020071774.png'),
                ),
                Divider(
                  height: 5,
                  color: Colors.red,
                )
              ],
            ),
          ),
          Container(
            color: Colors.grey,
            child: ListTile(
              leading: Icon(Icons.home, color: Colors.brown),
              title: Text(
                'Home',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => TourMainScreen()));
              },
            ),
          ),
          // ListTile(
          //   leading:
          //       Icon(Icons.portable_wifi_off_outlined, color: Colors.brown),
          //   title: Text(
          //     'Profile1',
          //     style: TextStyle(fontWeight: FontWeight.bold),
          //   ),
          //   onTap: () {
          //     Navigator.push(context,
          //         MaterialPageRoute(builder: (context) => TourMainScreen()));
          //   },
          // ),
          // ExpansionTile(
          //   title: Text(
          //     'Book Your Ticket',
          //     style: TextStyle(),
          //   ),
          //   children: <Widget>[
          //     ListTile(
          //       title: Text(
          //         ' Monuments',
          //         style: TextStyle(),
          //       ),
          //     ),
          //     ListTile(
          //       title: Text(
          //         ' Kurukshetra Haats and More..',
          //         style: TextStyle(),
          //       ),
          //     ),
          //     ListTile(
          //       title: Text(
          //         ' Tours and Packages',
          //         style: TextStyle(),
          //       ),
          //     )
          //   ],
          // ),
          // ListTile(
          //   leading: Icon(Icons.format_quote, color: Colors.brown),
          //   title: Text(
          //     "FAQ's",
          //   ),
          //   onTap: () {},
          // ),
          ListTile(
            leading: Icon(Icons.search, color: Colors.brown),
            title: Text(
              "COVID Guidelines",
            ),
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => StaySafe()));
            },
          ),
          ListTile(
            leading: Icon(Icons.email, color: Colors.brown),
            title: Text(
              "Foriegn Embassies",
            ),
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => StaySafe()));
            },
          ),
          ListTile(
            leading: Icon(Icons.call, color: Colors.brown),
            title: Text(
              "Important Number",
            ),
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => StaySafe()));
            },
          ),
          ListTile(
            leading: Icon(Icons.contact_page, color: Colors.brown),
            title: Text(
              "Contact Us",
            ),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => contactcls()));
            },
          ),
          ListTile(
            leading: Icon(Icons.facebook, color: Colors.brown),
            title: Text(
              "Feedback",
            ),
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => FeedBack()));
            },
          ),
          ListTile(
            leading: Icon(Icons.facebook, color: Colors.brown),
            title: Text(
              "Disclaimer",
            ),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Disclaimer()));
            },
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.network(
                'https://static01.nyt.com/images/2014/08/10/magazine/10wmt/10wmt-superJumbo-v4.jpg',
                width: 30,
              ),
              Image.network(
                'https://upload.wikimedia.org/wikipedia/commons/c/cd/Facebook_logo_%28square%29.png',
                width: 30,
              ),
              Image.network(
                'https://cdn.s3waas.gov.in/s3248e844336797ec98478f85e7626de4a/uploads/2019/01/2019010979.jpg',
                width: 40,
              ),
              Image.network(
                'https://cdn2.iconfinder.com/data/icons/social-media-2285/512/1_Instagram_colored_svg_1-512.png',
                width: 30,
              )
            ],
          )
        ],
      ),
    );
  }
}
