import 'dart:io';

import 'package:http/http.dart' as http;
import 'dart:async';

class APIServices {
  Future fetchmainapp() async {
    return await http.get(Uri.parse('http://103.87.24.58/tour/AppMain'));
  }

  Future fetchappPlaces() async {
    return await http.get(Uri.parse('http://103.87.24.58/tour/Places'));
  }

  /* static Future postUsers(Users users) async {
    Map<String, String> header = {
      'Content-type': 'application/json',
      'Accept': 'application/json'
    };
    var myUsers = users.toJson();
    var usersBody = json.encode(myUsers);
    var res = await http.post(
        Uri.parse('http://164.100.200.46/HelpTheNeedyAPI/api/Registration'),
        headers: header,
        body: usersBody);
    print(res.statusCode);
    return res.statusCode;
  } */

}
