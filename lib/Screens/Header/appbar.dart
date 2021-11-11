import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kurukshetra_tour/Screens/Search.dart';
import 'package:kurukshetra_tour/Screens/StaySafe.dart';

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
            icon: Icon(CupertinoIcons.circle_grid_hex_fill,
                size: 22, color: Colors.blueGrey[900]),
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => StaySafe()));
            }),
        GestureDetector(
            child: Icon(
              CupertinoIcons.search,
              size: 25,
              //color: Colors.blue,
            ),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => SearchScreen()));
            }),
        IconButton(
            icon: Icon(
              CupertinoIcons.cart,
              size: 22,
            ),
            onPressed: () {}),
      ],
      title: PopUp(),
    );
  }

  @override
  // TODO: implement preferredSize
  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
