import 'package:flutter/material.dart';
import 'package:weather_forcast/services/location.dart';
import 'package:weather_forcast/services/networking.dart';
import 'location_screen.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:weather_forcast/services/weather.dart';

class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getLocationData();
  }

  void getLocationData() async {
    var weatherData = await WeatherModel().getLocationWeather();

    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return LocationScreen(
        locationWeather: weatherData,
      );
    }));
  }

  @override
  Widget build(BuildContext context) {
    const spinkit = SpinKitRotatingCircle(
      color: Colors.white,
      size: 50.0,
    );

    return const Scaffold(
      body: Center(
        child: spinkit,
      ),
    );
  }
}
