import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kurukshetra_tour/Models/Methods/getMainScreen.dart';
import 'package:kurukshetra_tour/Models/ModMainApp.dart';
import 'package:kurukshetra_tour/Screens/Error/404.dart';
import 'package:kurukshetra_tour/Screens/Header/header.dart';


class TourMainScreen extends StatefulWidget {
  const TourMainScreen({ Key? key }) : super(key: key);

  @override
  _TourMainScreenState createState() => _TourMainScreenState();
}
const color = const Color(0xffb796d5f);
var data ;
//final Color color = HexColor.fromHex('#');
class _TourMainScreenState extends State<TourMainScreen> {


  @override
  void initState() {
    // TODO: implement initState
   data= getMainScreen().fetchmaindata();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return    Scaffold(
         
          drawer: Drawer(),
          appBar: AppBar(
            iconTheme: IconThemeData(),
            backgroundColor: Colors.white,
            titleSpacing: 0,
            

            actions: [


              Icon(
                CupertinoIcons.circle_grid_hex_fill,
                size: 25,
                color: Colors.blueGrey[900],
              ),
              Icon(
                CupertinoIcons.search,
                size: 25,
                //color: Colors.blue,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 10),
                child: Icon(
                  CupertinoIcons.cart,
                  size: 25,
                  //color: Colors.blue,
                ),
              ),
            ],
            title: Padding(
              padding: const EdgeInsets.all(8.0),
              child: PopUp(),
            ),
            centerTitle: true,
          ),
          body: Container(
            color: color,
            
            child: Column(
              
              children: <Widget>[
              LineImage(),
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
                          physics: ScrollPhysics(),
                          child: Container(
                            color: Colors.grey[600],
                            child: FutureBuilder<List<MainScreen>>(
                              future: getMainScreen().fetchmaindata(),
                              
                              builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    return ListView.builder(
                              physics: NeverScrollableScrollPhysics(),
                              scrollDirection: Axis.vertical,
                              shrinkWrap: true,
                              itemCount:snapshot.data!.length,
                              itemBuilder: (BuildContext context, Index){
                              return MyContent(
                              route: TourMainScreen(),
                              myImage:
                                  snapshot.data![Index].image,
                              title: snapshot.data![Index].title,
                              icon:snapshot.data![Index].icon,
                              id: 1,
                              type: "1",
                            );
 
                            });
                    } else if (snapshot.hasError) {
              
                      return  error404();
              }

              // By default, show a loading spinner.
              return  Center(child: CircularProgressIndicator());
                            
                              },),

                            // child: ListView.builder(
                            //   physics: NeverScrollableScrollPhysics(),
                            //   scrollDirection: Axis.vertical,
                            //   shrinkWrap: true,
                            //   itemCount:5,itemBuilder: (BuildContext context,int Index){
                            //   return MyContent(
                            //   route: TourMainScreen(),
                            //   myImage:
                            //       'https://cdn.s3waas.gov.in/s3248e844336797ec98478f85e7626de4a/uploads/2018/06/2018060657.jpg',
                            //   title: 'About Kurukshetra',
                            //   icon: Icon(
                            //     Icons.comment_bank_outlined,
                            //     color: Colors.white,
                            //     size: 32,
                            //   ),
                            //   id: 1,
                            //   type: "1",
                            // );
 
                            // }),
                          ),
                        ),
                      ),
                    ),
                    LineImage(),
                     // call class in TourAppbar.dart file
                  ],
                ),
              ),
            ]),
        
          ),
          bottomNavigationBar:  BottomNavigation(),
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
            leading:  Image.network(
              icon,height: 30,
              color: Colors.white,
             
            ),
            title: Text(
              title,
              style: TextStyle(color: Colors.white, fontSize: 18),
            ),
          ),
          Container(
           height: 150,
            //padding: EdgeInsets.all(10),
            child: Image.network(
              myImage,
              fit: BoxFit.fitHeight,
              width: double.infinity,
            ),
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
          )
,
        ],
      ),
    );
  }
}