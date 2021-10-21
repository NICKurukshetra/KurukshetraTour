import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kurukshetra_tour/Screens/StaySafe.dart';
import 'package:kurukshetra_tour/Screens/TourMain.dart';

import 'header.dart';

class Appbar extends StatelessWidget with PreferredSizeWidget {
  

  @override
  Widget build(BuildContext context) {
   
      return AppBar(
        
            iconTheme: IconThemeData(),
            backgroundColor: Colors.white,
            titleSpacing: 0,

            

            actions: [


              IconButton(

                icon:  Icon(CupertinoIcons.circle_grid_hex_fill,
                size: 22,
                color: Colors.blueGrey[900]),
                onPressed: (){

                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => StaySafe()));
                }
                
              ),
              Icon(
                CupertinoIcons.search,
                size: 25,
                //color: Colors.blue,
              ),
              IconButton(
               icon:  Icon( CupertinoIcons.cart,
                size: 22,),
                onPressed: (){

                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => StaySafe()));
                }
              ),
            ],
            title: PopUp(),
            
          );
      
  }

  @override
  // TODO: implement preferredSize
@override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
  
}