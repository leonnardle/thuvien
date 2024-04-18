import 'dart:convert';

import 'package:http/http.dart'as http;
import 'package:thuctap/utils.dart';
Future userLogin(String email,String password)async{

  final response = await http.post(
    Uri.parse('${Utils.baseUrl}/user/login'),
    headers: {"Accept": "Application/json"},
    body: {
      'email': email,
      'password': password
    },
  );
  var decodedData=jsonDecode(response.body);
  return decodedData;
}