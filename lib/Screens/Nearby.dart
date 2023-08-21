import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';

var url = 'https://www.google.com/maps/search/Near+me/';

class Nearby extends StatefulWidget {
  @override
  _NearbyState createState() => _NearbyState();
}

class _NearbyState extends State<Nearby> {
  TextEditingController controller = TextEditingController();
  //TextEditingController controller1 = TextEditingController();
  FlutterWebviewPlugin flutterWebviewPlugin = FlutterWebviewPlugin();
  @override
  void initState() {
    super.initState();
    flutterWebviewPlugin.onStateChanged.listen((WebViewStateChanged wvs) {});
  }

  searchURLDHARAMSHALA() {
    setState(() {
      url = 'https://www.google.com/maps/search/dharamshala+near+me/';
      flutterWebviewPlugin.reloadUrl(url);
      controller.text = url;
    });
  }

  searchURLHospital() {
    setState(() {
      url = 'https://www.google.com/maps/search/hospital+near+me/';
      flutterWebviewPlugin.reloadUrl(url);
      controller.text = url;
    });
  }

  searchURLPetrol() {
    setState(() {
      url = "https://www.google.com/maps/search/petrol+pump+near+me/";
      flutterWebviewPlugin.reloadUrl(url);
      controller.text = url;
    });
  }

  searchURLRailwaystn() {
    setState(() {
      url = "https://www.google.com/maps/search/railway+station+near+me/";
      flutterWebviewPlugin.reloadUrl(url);
      controller.text = url;
    });
  }

  searchURLforeignexchange() {
    setState(() {
      url = "https://www.google.com/maps/search/foreign+exchange+near+me/";
      flutterWebviewPlugin.reloadUrl(url);
      controller.text = url;
    });
  }

  searchURLAtm() {
    setState(() {
      url = "https://www.google.com/maps/search/atm+near+me/";
      flutterWebviewPlugin.reloadUrl(url);
      controller.text = url;
    });
  }

  searchURLRESTAURANTS() {
    setState(() {
      url = "https://www.google.com/maps/search/restaurants+near+me/";
      flutterWebviewPlugin.reloadUrl(url);
      controller.text = url;
    });
  }

  searchURLPolice() {
    setState(() {
      url = "https://www.google.com/maps/search/police+station+near+me/";
      flutterWebviewPlugin.reloadUrl(url);
      controller.text = url;
    });
  }

  searchURLPostOffice() {
    setState(() {
      url = 'https://www.google.com/maps/search/post+office+near+me/';
      flutterWebviewPlugin.reloadUrl(url);
      controller.text = url;
    });
  }

  searchURLRepairing() {
    setState(() {
      url = 'https://www.google.com/maps/search/repair+shop+near+me/';
      flutterWebviewPlugin.reloadUrl(url);
      controller.text = url;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            title: Text("Near by me"),
          ),
          body: SingleChildScrollView(
              child: Column(children: <Widget>[
            Container(
              //padding: EdgeInsets.only(top: 5),
              height: MediaQuery.of(context).size.width * 0.85,
              //color: Colors.red,
              child: WebviewScaffold(
                url: url,
                withZoom: true,
                hidden: true,
              ),
            ),
            Divider(
              color: Colors.brown,
            ),
            Container(
              child: GridView.count(
                  shrinkWrap: true,
                  primary: true,
                  padding: EdgeInsets.fromLTRB(5, 5, 10, 10),
                  crossAxisCount: 4,
                  children: <Widget>[
                    ElevatedButton(
                        // color: Colors.white,
                        // shape: RoundedRectangleBorder(
                        //     borderRadius: BorderRadius.circular(10)),
                        child: Icon(
                          Icons.home_filled,
                          color: Colors.brown[100],
                        ),
                        onPressed: searchURLDHARAMSHALA),
                    ElevatedButton(
                        // color: Colors.white,
                        // shape: RoundedRectangleBorder(
                        //     borderRadius: BorderRadius.circular(10)),
                        child: Icon(
                          Icons.medical_services,
                          color: Colors.brown[100],
                        ),
                        onPressed: searchURLHospital),
                    ElevatedButton(
                        // color: Colors.white,
                        // shape: RoundedRectangleBorder(
                        //     borderRadius: BorderRadius.circular(10)),
                        child: Icon(
                          Icons.local_gas_station,
                          color: Colors.brown[100],
                        ),
                        onPressed: searchURLPetrol),
                    ElevatedButton(
                        // color: Colors.white,
                        // shape: RoundedRectangleBorder(
                        //     borderRadius: BorderRadius.circular(10)),
                        child: Icon(
                          Icons.local_police,
                          color: Colors.brown[100],
                        ),
                        onPressed: searchURLPolice),
                    ElevatedButton(
                        // color: Colors.white,
                        // shape: RoundedRectangleBorder(
                        //     borderRadius: BorderRadius.circular(10)),
                        child: Icon(
                          Icons.railway_alert,
                          color: Colors.brown[100],
                        ),
                        onPressed: searchURLRailwaystn),
                    ElevatedButton(
                        // color: Colors.white,
                        // shape: RoundedRectangleBorder(
                        //     borderRadius: BorderRadius.circular(10)),
                        child: Icon(
                          Icons.attach_money_outlined,
                          color: Colors.brown[100],
                        ),
                        onPressed: searchURLforeignexchange),
                    ElevatedButton(
                        // color: Colors.white,
                        // shape: RoundedRectangleBorder(
                        //     borderRadius: BorderRadius.circular(10)),
                        child: Icon(
                          Icons.atm_outlined,
                          color: Colors.brown[100],
                        ),
                        onPressed: searchURLAtm),
                    ElevatedButton(
                        // color: Colors.white,
                        // shape: RoundedRectangleBorder(
                        //     borderRadius: BorderRadius.circular(10)),
                        child: Icon(
                          Icons.car_repair,
                          color: Colors.brown[100],
                        ),
                        onPressed: searchURLRepairing),
                    ElevatedButton(
                        // color: Colors.white,
                        // shape: RoundedRectangleBorder(
                        //     borderRadius: BorderRadius.circular(10)),
                        child: Icon(
                          Icons.restaurant,
                          color: Colors.brown[100],
                        ),
                        onPressed: searchURLRESTAURANTS),
                    ElevatedButton(
                        // color: Colors.white,
                        // shape: RoundedRectangleBorder(
                        //     borderRadius: BorderRadius.circular(10)),
                        child: Icon(
                          Icons.local_post_office_rounded,
                          color: Colors.brown[100],
                        ),
                        onPressed: searchURLPostOffice),
                  ]),
            )
          ]))),
    );
  }
}
