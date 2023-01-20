import 'dart:async';
import 'dart:convert';


import './Apiapplication.dart';

import 'Apiconection.dart';
import '../view/modelclass.dart';

Future<Empty> fetchAlbum() async {
  var http;
  final response = await http.get(
      Uri.parse("https://63578c6b2712d01e1409cfc1.mockapi.io/api/sample/1"));
  if (response.statusCode == 200) {
    return Empty.fromJson(jsonDecode(response.body));
  } else {
    throw Exception('Failed to load album');
  }
}

class FromJson {}
