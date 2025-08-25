import 'package:flutter/material.dart';
import 'package:googlemaps/google_map.dart';
import 'package:googlemaps/home_screen.dart';

void main(){

  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'google maps',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Google_map(),
    );
  }
}
