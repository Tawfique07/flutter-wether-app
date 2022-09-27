// @dart=2.9
import 'package:flutter/material.dart';
import 'package:flutter_wether_app/currentWeather.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp();

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: CurrentWeatherPage(),
    );
  }
}




