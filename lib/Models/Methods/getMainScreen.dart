import 'dart:convert';
import 'dart:io';

import 'package:kurukshetra_tour/Models/Places.dart';

import '../Apiservices.dart';
import '../ModMainApp.dart';
import 'package:http/http.dart' as http;


class getMainScreen {

 Future<List<MainScreen>> fetchmaindata() async {
  final response = await http
      .get(Uri.parse('http://103.87.24.58/tour/AppMain'));
  if (response.statusCode == 200) {
    // If the server did return a 200 OK response,
    // then parse the JSON.
     final parsed = jsonDecode(response.body).cast<Map<String, dynamic>>();

  return parsed.map<MainScreen>((json) => MainScreen.fromJson(json)).toList();
    
  } else {
    // If the server did not return a 200 OK response,
    // then throw an exception.
    throw Exception('Failed to load album');
  }
}


Future<List<Places>> fetchplaces() async {
  final response = await http
      .get(Uri.parse('http://103.87.24.58/tour/Places'));
  if (response.statusCode == 200) {
    // If the server did return a 200 OK response,
    // then parse the JSON.
     var parsed = placesFromJson(response.body);

     return  parsed;

  
    
  } else {
    // If the server did not return a 200 OK response,
    // then throw an exception.
    throw Exception('Failed to load album');
  }
}

}