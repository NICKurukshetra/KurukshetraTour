import 'package:flutter/material.dart';

class TourMainScreen extends StatefulWidget {
  const TourMainScreen({ Key? key }) : super(key: key);

  @override
  _TourMainScreenState createState() => _TourMainScreenState();
}

class _TourMainScreenState extends State<TourMainScreen> {
  @override
  Widget build(BuildContext context) {
    return    Scaffold(
          backgroundColor: Colors.green[300],
          drawer: Drawer(),
          appBar: AppBar(
            iconTheme: IconThemeData(color: Colors.blue),
            backgroundColor: Colors.white,
            titleSpacing: 0,
            actions: [
              Icon(
                Icons.map,
                size: 30,
                color: Colors.blue,
              ),
              Icon(
                Icons.search,
                size: 30,
                color: Colors.blue,
              ),
            ],
            title: Text(""),
            centerTitle: true,
          ),
          body: Container(
            decoration: BoxDecoration(
              color: Colors.grey[600],
              // gradient: LinearGradient(
              //   colors: [
              //     Colors.green,
              //     Colors.cyan,
              //   ],
              // ),
            ),
            child: Column(children: <Widget>[
              Expanded(
                flex: 1,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                   // call class in TourAppbar.dart file
                    Expanded(
                      flex: 1,
                      child: Container(
                        //padding: EdgeInsets.all(5),
                        width: double.infinity,
                        child: SingleChildScrollView(
                          child: Container(
                            color: Colors.grey[600],
                            child: Column(
                              children: [
                                MyContent(
                                  route: TourMainScreen(),
                                  myImage:
                                      'https://cdn.s3waas.gov.in/s3248e844336797ec98478f85e7626de4a/uploads/2018/06/2018060167.png',
                                  title: 'About Kurukshetra',
                                  icon: Icon(
                                    Icons.comment_bank_outlined,
                                    color: Colors.white,
                                    size: 32,
                                  ),
                                  id: 1,
                                  type: "1",
                                ),
                                
                                
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                     // call class in TourAppbar.dart file
                  ],
                ),
              ),
            ]),
          ),
          );
  }
  
}
class MyContent extends StatelessWidget {
  String title;
   String myImage;
   Icon icon;
   String type;
   int id;
  Widget route;

  MyContent({required this.title, required this.icon, required this.myImage,required this.id,required this.type, required this.route});
      

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) => route));
      },
      child: Column(
        children: [
          ListTile(
            leading: icon,
            title: Text(
              title,
              style: TextStyle(color: Colors.white, fontSize: 22),
            ),
          ),
          Container(
            height: 150,
            padding: EdgeInsets.all(10),
            child: Image.network(
              myImage,
              fit: BoxFit.cover,
              width: double.infinity,
            ),
            // Image.asset(
            //   'assets/'+image,
            //   fit: BoxFit.cover,
            //   width: double.infinity,
            // ),
          ),
          Divider(
            color: Colors.white,
            thickness: 2,
          ),
        ],
      ),
    );
  }
}