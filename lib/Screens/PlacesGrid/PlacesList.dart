// ignore_for_file: must_be_immutable

import 'dart:ui';

import 'package:flutter/material.dart';

import 'package:kurukshetra_tour/Models/Methods/getMainScreen.dart';
import 'package:kurukshetra_tour/Models/Places.dart';
import 'package:kurukshetra_tour/Screens/Error/404.dart';

import 'package:kurukshetra_tour/Screens/Header/appbar.dart';
import 'package:kurukshetra_tour/Screens/Header/header.dart';
import 'package:kurukshetra_tour/Screens/PlacesDetails/PlacesDetail.dart';




var data=[];
  String maintitle="";
  String headerimage="";
const color = const Color(0xffb796d5f);
class PlacesGrid extends StatefulWidget {
  final String title;
  final String image;
  PlacesGrid({required this.title,required this.image});
  
  @override
  State<PlacesGrid> createState() => _PlacesGridState();
}

class _PlacesGridState extends State<PlacesGrid> {
  @override
  void initState()  {
    // TODO: implement initState
   maintitle=widget.title;
   headerimage=widget.image;
    //getdate();
    super.initState();
  }

// Future getdate()
// async {

//   data= await getMainScreen().fetchplaces();
// }

  @override
  Widget build(BuildContext context) {
   
    return Scaffold(
      
         
         backgroundColor: Colors.white,
          drawer: Drawer(),
          appBar: Appbar(),

          body:         
                Column(
                  
                  children: [
                    LineImage(),
                    HeaderSinglePage(),
                    Expanded(
                      child: FutureBuilder<List<Places>>(
                        future: getMainScreen().fetchplaces(),

                        builder: (context,snaphost) {
                          if(snaphost.hasData)
                          {
                          return GridView.builder(
                            
                            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2,
                             childAspectRatio: 1.4,
                                  
                                 
                                 
                                                  ),
                          itemCount: snaphost.data!.length,
                          itemBuilder: (BuildContext ctx, index)
                          {
                            return MyContent(
                              title: snaphost.data![index].title, 
                              myImage: snaphost.data![index].image,
                              id: snaphost.data![index].id,
                              );
                          }                                           
                          );
                          }
                          if(snaphost.hasError)
                          {
                            return error404();
                          }
                          
                            return  Center(child: CircularProgressIndicator());
                        }
                      ),
                    ),
                    LineImage(),
                    BottomNavigation()
                  ],
                )
              
             

                                  
                            
                          
            
          
                   
         
     ); }
}

class MyContent extends StatelessWidget {
  String title;
  final String myImage;
  late int id;

  MyContent({ required this.title, required this.myImage,required id});

  @override
  Widget build(BuildContext context) {
    return 
    GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) => PlacesDetail(title: title,image: myImage,)));
      },
      child: 
    Padding(
      padding: const EdgeInsets.only(left:8.0,right: 8.0),
      child: Column(
          children: [
            Image.network(
              
              myImage,
              fit: BoxFit.fill,
              width: 400,
              height: 100,
            ),
            Wrap(
              children :[ Align(
                alignment: Alignment.bottomLeft,
                
                child: Text(
                                
                  title,
                  textAlign: TextAlign.start,
                  maxLines: 2,
                  
                  overflow: TextOverflow.clip,
      style: TextStyle(fontSize: 14),
                ),
              
              ),
              ]
            ),
          ],
        
      ),)
    );
  }
}

class CustomClipPath extends CustomClipper<Path> {
  var radius = 1.0;
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(0, size.height);
    path.arcToPoint(Offset(size.width, size.height-5),
        radius: Radius.elliptical(25, 3));
    path.lineTo(size.width, 0);
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}

class HeaderSinglePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: <Widget>[
          ClipPath(
            clipper: CustomClipPath(),
            child: Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height/6,
              color: color,
            ),
          ),
          
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
               height: MediaQuery.of(context).size.height/8,
                alignment: Alignment.center,
                decoration: new BoxDecoration(
            color: Colors.black,
            image: new DecorationImage(
              fit: BoxFit.cover,
              colorFilter: new ColorFilter.mode(Colors.black.withOpacity(0.3), BlendMode.dstIn),
              image: new NetworkImage(headerimage),

            ),
                ),
                child:Text(maintitle              ,
                style: TextStyle(color: Colors.white, fontSize: 26), 
            ),
        
         
            ),
          ),
        ],
      ),
    );
  }
}
