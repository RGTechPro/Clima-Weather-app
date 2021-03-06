import 'package:clima/screens/location_screen.dart';
import 'package:clima/services/weather.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:clima/services/location.dart';
import 'package:clima/services/networking.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'location_screen.dart';

class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  WeatherModel we = WeatherModel();
  @override
  void initState() {
    super.initState();
    getLocation();
  }

  void getLocation() async {
    var decoded = await we.getWeatherData();
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return LocationScreen(decoded);
    }));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SpinKitThreeBounce(
      color: Colors.white,
      size: 50.0,
    ));
  }
}
