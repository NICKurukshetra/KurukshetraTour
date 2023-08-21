import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:kurukshetra_tour/Screens/Header/Drawer.dart';

import 'Header/appbar.dart';
import 'Header/header.dart';

// ignore: import_of_legacy_library_into_null_safe
// ignore: unused_import

class FeedBack extends StatefulWidget {
  const FeedBack({Key? key}) : super(key: key);

  @override
  _FeedBackState createState() => _FeedBackState();
}

class _FeedBackState extends State<FeedBack> {
  final _formKey = GlobalKey<FormState>();
  List<bool> isSelected1 = [false, false, false];
  List<bool> isSelected2 = [false, false, false];
  List<bool> isSelected3 = [false, false, false];
  bool isChecked1 = false;
  bool isChecked2 = false;
  bool isChecked3 = false;

  int _ratingBarMode = 1;
  double _initialRating = 5.0;
  bool _isRTLMode = false;
  bool _isVertical = false;

  IconData? _selectedIcon;
  final _controller = TextEditingController();
  late String val;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          drawer: DrawerMenu(),
          appBar: Appbar(),
          body: Container(
            child: Column(children: <Widget>[
              Expanded(
                flex: 1,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    //  LineImage(), // call class in TourAppbar.dart file
                    Expanded(
                      flex: 1,
                      child: Container(
                        width: double.infinity,
                        child: SingleChildScrollView(
                          child: Form(
                            key: _formKey,
                            child: Container(
                              child: Column(
                                children: [
                                  HeaderSinglePage(),
                                  Container(
                                    // color: Colors.grey[300],
                                    margin: EdgeInsets.only(
                                        top: 8, left: 20, right: 20),
                                    child: Column(
                                      children: [
                                        Container(
                                          width: double.infinity,
                                          padding: EdgeInsets.all(20),
                                          child: Text(
                                            'The Kurukshetra Tourism App isn intended to facilitate your trip to Delhi from every possible perspective. We would be very happy to hear from you about your experience.',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                                color: Colors.grey[600]),
                                          ),
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text("Was this App useful?"),
                                            SizedBox(
                                              width: 30,
                                            ),
                                            Container(
                                              child: Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: <Widget>[
                                                  ToggleButtons(
                                                      color: Colors.black,
                                                      selectedColor:
                                                          Colors.white,
                                                      fillColor: Colors.blue,
                                                      highlightColor:
                                                          Colors.lightBlue,
                                                      borderColor: Colors.black,
                                                      borderWidth: 1,
                                                      selectedBorderColor:
                                                          Colors.black,
                                                      renderBorder: true,
                                                      children: <Widget>[
                                                        Text("Yes"),
                                                        Text("No"),
                                                        Text("Maybe"),
                                                      ],
                                                      isSelected: isSelected1,
                                                      onPressed: (int index) {
                                                        setState(() {
                                                          for (int indexBtn = 0;
                                                              indexBtn <
                                                                  isSelected1
                                                                      .length;
                                                              indexBtn++) {
                                                            if (indexBtn ==
                                                                index) {
                                                              isSelected1[
                                                                      indexBtn] =
                                                                  !isSelected1[
                                                                      indexBtn];
                                                            } else {
                                                              isSelected1[
                                                                      indexBtn] =
                                                                  false;
                                                            }
                                                          }
                                                        });
                                                      }),
                                                ],
                                              ),
                                            ),
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                  Container(
                                    // color: Colors.grey[300],
                                    margin: EdgeInsets.only(
                                        top: 8, left: 20, right: 20),
                                    child: Column(
                                      children: [
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                                "Was this information sufficient"),
                                            Container(
                                              child: Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: <Widget>[
                                                  ToggleButtons(
                                                      color: Colors.black,
                                                      selectedColor:
                                                          Colors.white,
                                                      fillColor: Colors.blue,
                                                      highlightColor:
                                                          Colors.lightBlue,
                                                      borderColor: Colors.black,
                                                      borderWidth: 1,
                                                      selectedBorderColor:
                                                          Colors.black,
                                                      renderBorder: true,
                                                      children: <Widget>[
                                                        Text("Yes"),
                                                        Text("No"),
                                                        Text("Maybe"),
                                                      ],
                                                      isSelected: isSelected2,
                                                      onPressed: (int index) {
                                                        setState(() {
                                                          for (int indexBtn = 0;
                                                              indexBtn <
                                                                  isSelected2
                                                                      .length;
                                                              indexBtn++) {
                                                            if (indexBtn ==
                                                                index) {
                                                              isSelected2[
                                                                      indexBtn] =
                                                                  !isSelected2[
                                                                      indexBtn];
                                                            } else {
                                                              isSelected2[
                                                                      indexBtn] =
                                                                  false;
                                                            }
                                                          }
                                                        });
                                                      }),
                                                ],
                                              ),
                                            ),
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(
                                        top: 8, left: 20, right: 20),
                                    child: Column(
                                      children: [
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                                "Was this information accurate"),
                                            Container(
                                              child: Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: <Widget>[
                                                  ToggleButtons(
                                                      color: Colors.black,
                                                      selectedColor:
                                                          Colors.white,
                                                      fillColor: Colors.blue,
                                                      highlightColor:
                                                          Colors.lightBlue,
                                                      borderColor: Colors.black,
                                                      borderWidth: 1,
                                                      selectedBorderColor:
                                                          Colors.black,
                                                      renderBorder: true,
                                                      children: <Widget>[
                                                        Text("Yes"),
                                                        Text("No"),
                                                        Text("Maybe"),
                                                      ],
                                                      isSelected: isSelected3,
                                                      onPressed: (int index) {
                                                        setState(() {
                                                          for (int indexBtn = 0;
                                                              indexBtn <
                                                                  isSelected3
                                                                      .length;
                                                              indexBtn++) {
                                                            if (indexBtn ==
                                                                index) {
                                                              isSelected3[
                                                                      indexBtn] =
                                                                  !isSelected3[
                                                                      indexBtn];
                                                            } else {
                                                              isSelected3[
                                                                      indexBtn] =
                                                                  false;
                                                            }
                                                          }
                                                        });
                                                      }),
                                                ],
                                              ),
                                            ),
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(
                                        top: 8, left: 20, right: 20),
                                    child: Column(
                                      children: [
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                                "Was this information accurate"),
                                            Container(
                                              child: Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: <Widget>[
                                                  Directionality(
                                                    textDirection: _isRTLMode
                                                        ? TextDirection.rtl
                                                        : TextDirection.ltr,
                                                    child: _ratingBar(
                                                        _ratingBarMode),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                  Column(
                                    children: [
                                      Center(
                                        child: Container(
                                          margin: EdgeInsets.all(20),
                                          child: TextField(
                                            controller: _controller,
                                            cursorColor: Colors.greenAccent,
                                            decoration: InputDecoration(
                                                hintText:
                                                    "Please share your suggestions for us to improve your experience",
                                                contentPadding:
                                                    new EdgeInsets.symmetric(
                                                        vertical: 25.0,
                                                        horizontal: 10.0),
                                                border: OutlineInputBorder()),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: ElevatedButton(
                                          onPressed: () {
                                            // Validate returns true if the form is valid, otherwise false.
                                            if (_formKey.currentState!
                                                .validate()) {
                                              // If the form is valid, display a snackbar. In the real world,
                                              // you'd often call a server or save the information in a database.

                                              // ignore: deprecated_member_use

                                              ScaffoldMessenger.of(context)
                                                  .showSnackBar(SnackBar(
                                                      content: Text(
                                                          'Feesdback submitted successfully')));
                                            }
                                          },
                                          child: Text('Submit'),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Container(
                                    padding: EdgeInsets.all(10),
                                    alignment: Alignment.topLeft,
                                    child: Image.asset(
                                      'assets/images/mapImage.jpg',
                                      width: double.infinity,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),

                    //  LineImage(), // call class in TourAppbar.dart file
                  ],
                ),
              ),
            ]),
          ),

          bottomNavigationBar:
              BottomNavigation(), // call class in TourAppbar.dart file
        ));
  }

  Widget _ratingBar(int mode) {
    return RatingBar.builder(
      initialRating: _initialRating,
      minRating: 1,
      direction: _isVertical ? Axis.vertical : Axis.horizontal,
      // allowHalfRating: true,
      unratedColor: Colors.amber.withAlpha(50),
      itemCount: 5,
      itemSize: 30.0,
      // itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
      itemBuilder: (context, _) => Icon(
        _selectedIcon ?? Icons.star,
        color: Colors.amber,
      ),
      onRatingUpdate: (rating) {},
      updateOnDrag: true,
    );
  }
}

class CustomClipPath extends CustomClipper<Path> {
  var radius = 1.0;
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(0, size.height);
    path.arcToPoint(Offset(size.width, size.height),
        radius: Radius.elliptical(35, 5));
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
              width: 800,
              height: 150,
              color: Colors.grey[400],
            ),
          ),
          Container(
              padding: EdgeInsets.all(5),
              child: Image.network(
                'https://image.freepik.com/free-vector/stylish-glowing-digital-red-lines-banner_1017-23964.jpg',
                fit: BoxFit.fill,
                width: 800,
                height: 100,
              )),
          Container(
            alignment: Alignment.bottomCenter,
            height: 100,
            padding: EdgeInsets.only(
                // top: 30,
                ),
            child: Text(
              'Feedback',
              style: TextStyle(color: Colors.white, fontSize: 26),
            ),
          ),
        ],
      ),
    );
  }
}

class BottomNavigation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            "6",
            style: TextStyle(
                color: Colors.blue, fontWeight: FontWeight.bold, fontSize: 28),
          ),
          GestureDetector(
            onTap: () {
              // Navigator.push(
              //     context, MaterialPageRoute(builder: (context) => HomePage()));
            },
            child: Text(
              "Way To Discover\n Kurukshetra",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.blue,
                  fontSize: 15),
            ),
          ),
          Text(
            "|",
            style: TextStyle(
                fontWeight: FontWeight.bold, color: Colors.blue, fontSize: 30),
          ),
          GestureDetector(
            onTap: () {
              // Navigator.push(
              //     context, MaterialPageRoute(builder: (context) => HomePage()));
            },
            child: Text(
              "Kurukshetra Darshan",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.blue,
                  fontSize: 18),
            ),
          )
        ],
      ),
    );
  }
}
