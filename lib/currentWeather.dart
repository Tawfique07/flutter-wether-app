import 'package:flutter/material.dart';
import 'package:flutter_wether_app/models/weather.dart';
import 'package:http/http.dart' as http;

class CurrentWeatherPage extends StatefulWidget {

  @override
  _CurrentWeatherPageState createState() => _CurrentWeatherPageState();
}

class _CurrentWeatherPageState extends State<CurrentWeatherPage>{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Center(
        child: FutureBuilder(
            builder: (context, snapshot){
              if(snapshot!=null){
                Weather? _weather = snapshot.data as Weather?;
                if(_weather == null){
                  return Text("Error getting weather!");
                }else{
                  return weatherBox(_weather);
                }
              }else{
                return CircularProgressIndicator();
              }
            },
          future: getCurrentWeather(),
        ),
      ),
    );
  }

  Widget weatherBox(Weather _weather){
    return Column(
      children: <Widget>[
        Text("${_weather.temp}°C"),
        Text("${_weather.description}"),
        Text("Feels:${_weather.feelsLike}°C"),
        Text("H:${_weather.high}°C L:${_weather.low}°C")
      ],
    );
  }
}

Future getCurrentWeather() async {
  Weather weather;
  String city = "Rajshahi";
  String api_key = "API KEY";
  var url = "https://api.openweathermap.org/data/2.5/weather?q=$city&appid=$api_key";

  final response = await http.get(url);

}
