import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'header.dart';

class Appbar extends StatelessWidget with PreferredSizeWidget {
  

  @override
  Widget build(BuildContext context) {
   
      return AppBar(
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
          );
      
  }

  @override
  // TODO: implement preferredSize
@override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
  
}