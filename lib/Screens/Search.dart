import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:kurukshetra_tour/Models/Methods/getMainScreen.dart';
import 'package:kurukshetra_tour/Models/Places.dart';
import 'package:kurukshetra_tour/Screens/AboutUs.dart';
import 'package:kurukshetra_tour/Screens/Footer/footer.dart';

import 'Header/Drawer.dart';
import 'Header/header.dart';
import 'PlacesDetails/PlacesDetail.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  _SearchScreenState createState() => _SearchScreenState();
}

//const color = const Color(0xffb796d5f);

class _SearchScreenState extends State<SearchScreen> {
  ///==============
  List<Places> persons = [];
  List<Places> original = [];
  TextEditingController txtQuery = new TextEditingController();

  void loadData() async {
    //String jsonStr = await rootBundle.loadString('assets/busLocation.json');

    //var json = jsonDecode(jsonStr);
    var futuredata = await getMainScreen().fetchplaces();

    persons = futuredata; //one will be used to build the list
    original = futuredata; // second will be used to search
    setState(() {});
  }

  void search(String query) {
    if (query.isEmpty) {
      persons = original;
      setState(() {});
      return;
    }

    query = query.toLowerCase();
    //print(query);
    List<Places> result = [];
    persons.forEach((p) {
      var name = p.title.toLowerCase();
      if (name.contains(query)) {
        result.add(p);
      }
    });

    persons = result;
    setState(() {});
  }

  @override
  void initState() {
    super.initState();

    loadData();
  }

  double targetValue = 24.0;

  ///
  ///
  ///=====================
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // drawer: DrawerMenu(),
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Container(
          padding: EdgeInsets.symmetric(horizontal: 10),
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.black,
            ),
            borderRadius: BorderRadius.circular(10),
          ),
          child: TextFormField(
            controller: txtQuery,
            onChanged: search,
            decoration: InputDecoration(
              hintText: "Search Places name",
              icon: Icon(Icons.search),
              contentPadding: EdgeInsets.symmetric(horizontal: 5, vertical: 1),
            ),
          ),
        ),
      ),
      body: Column(children: [
        LineImage(),
        _listView(persons),
        LineImage(),
      ]),
      bottomNavigationBar: BottomNavigation(),
    );
  }
}

Widget _listView(List<Places> persons) {
  return Expanded(
    child: ListView.builder(
        itemCount: persons.length,
        itemBuilder: (context, index) {
          Places person = persons[index];
          return ListTile(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          PlacesDetail(data: persons, index: index)));
            },
            leading: Image.network(
              person.image,
              fit: BoxFit.fill,
              width: 100,
            ),
            title: Text(
              person.title,
              style: TextStyle(
                  fontSize: 14.0,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            ),
            contentPadding: EdgeInsets.all(10),
          );
        }),
  );
}
