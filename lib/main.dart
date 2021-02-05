import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:huna_tiwi/ali.dart';
import 'package:marquee_widget/marquee_widget.dart';
import 'package:http/http.dart' as http;

void main() => runApp(AliApp());

var url = 'https://studio-press.pro/wp-json/wp/v2/posts?_embed';

Future fetchmyposts() async {
  final response = await http.get(url, headers: {"Accept": "application/json"});
  var convertData = jsonDecode(response.body);
  return convertData;
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void setState(fn) {
    // TODO: implement setState
    super.setState(fn);
    fetchmyposts();
  }
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
