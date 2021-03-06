import 'networking.dart';
import 'location.dart';
import 'package:flutter_config/flutter_config.dart';

class WeatherModel {
  Future getCityWeather(var cityName) async {
    NetworkHelp n;
    var decoded;
    n = NetworkHelp(
        'http://api.openweathermap.org/data/2.5/weather?q=$cityName&appid=${FlutterConfig.get('API_KEY')}&units=metric');
    decoded = await n.getData();

    return decoded;
  }

  Future getWeatherData() async {
    Location location = Location();
    await location.getLocationc();

    print(location.latitude);
    print(location.longitude);
    NetworkHelp n;
    var decoded;
    n = NetworkHelp(
        'http://api.openweathermap.org/data/2.5/weather?lat=${location.latitude}&lon=${location.longitude}&appid=${FlutterConfig.get('API_KEY')}&units=metric');
    decoded = await n.getData();

    return decoded;
  }

  String getWeatherIcon(int condition) {
    if (condition < 300) {
      return '๐ฉ';
    } else if (condition < 400) {
      return '๐ง';
    } else if (condition < 600) {
      return 'โ๏ธ';
    } else if (condition < 700) {
      return 'โ๏ธ';
    } else if (condition < 800) {
      return '๐ซ';
    } else if (condition == 800) {
      return 'โ๏ธ';
    } else if (condition <= 804) {
      return 'โ๏ธ';
    } else {
      return '๐คทโ';
    }
  }

  String getMessage(int temp) {
    if (temp > 25) {
      return 'It\'s ๐ฆ time';
    } else if (temp > 20) {
      return 'Time for shorts and ๐';
    } else if (temp < 10) {
      return 'You\'ll need ๐งฃ and ๐งค';
    } else {
      return 'Bring a ๐งฅ just in case';
    }
  }
}
