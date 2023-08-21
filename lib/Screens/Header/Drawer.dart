import 'package:flutter/material.dart';
import 'package:kurukshetra_tour/Screens/TourMain.dart';
import 'package:kurukshetra_tour/Screens/contact.dart';
import 'package:kurukshetra_tour/Screens/feedback.dart';
import 'package:url_launcher/url_launcher.dart';

import '../Disclaimer.dart';
import '../StaySafe.dart';

class DrawerMenu extends StatefulWidget {
  @override
  _DrawerMenuState createState() => _DrawerMenuState();
}

class _DrawerMenuState extends State<DrawerMenu> {
  void lanuchURL(String str) {
    launch(str);
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          DrawerHeader(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                //mahabharata.png
                // Container(
                //     width: 90.0,
                //     height: 90.0,
                //     child: Icon(
                //       Icons.ac_unit,
                //       //  Icons.supervised_user_circle_sharp,
                //       size: 70,
                //     )),
                Container(
                    width: 120.0,
                    height: 100.0,
                    child: Image.asset('assets/images/mahabharata.png')),
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
            leading: Icon(Icons.book_rounded, color: Colors.brown),
            title: Text(
              "COVID Guidelines",
            ),
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => StaySafe()));
            },
          ),
          // ListTile(
          //   leading: Icon(Icons.email, color: Colors.brown),
          //   title: Text(
          //     "Foriegn Embassies",
          //   ),
          //   onTap: () {
          //     Navigator.push(
          //         context, MaterialPageRoute(builder: (context) => StaySafe()));
          //   },
          // ),
          ListTile(
            leading: Icon(Icons.call, color: Colors.brown),
            title: Text(
              "Important Number",
            ),
            onTap: () {
              lanuchURL(
                  "https://kurukshetra.gov.in/must-to-know/#1649869118496-72a45fd5-dc66");
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
            leading: Icon(Icons.rate_review, color: Colors.brown),
            title: Text(
              "Feedback",
            ),
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => FeedBack()));
            },
          ),
          ListTile(
            leading: Icon(Icons.wrong_location, color: Colors.brown),
            title: Text(
              "Disclaimer",
            ),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Disclaimer()));
            },
          ),
          ListTile(
            leading: Icon(Icons.video_library_sharp, color: Colors.brown),
            title: Text(
              "Videos",
            ),
            onTap: () {
              lanuchURL("https://kurukshetra.gov.in/videos/");
            },
          ),
          ListTile(
            leading: Icon(Icons.facebook_outlined, color: Colors.brown),
            title: Text(
              "Social Media",
            ),
            onTap: () {
              lanuchURL("https://kurukshetra.gov.in/latest-todays/#Social-id");
            },
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              // IconButton(
              //     onPressed: () {
              //       lanuchURL(
              //           "https://www.facebook.com/DistrictAdministrationKurukshetra");
              //     },
              //     icon: Icon(
              //       Icons.facebook,
              //       color: Colors.blue,
              //     )),
              // IconButton(
              //     onPressed: () {
              //       lanuchURL("https://kurukshetra.gov.in/videos/");
              //     },
              //     icon: Icon(
              //       Icons.video_library_outlined,
              //       color: Colors.red,
              //     )),
            ],
          )
        ],
      ),
    );
  }
}
