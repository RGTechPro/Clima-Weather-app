import 'networking.dart';
import 'location.dart';

const String api = '179a50e65fec0bbc67fe15b683017f90';

class WeatherModel {
  Future getCityWeather(var cityName) async {
    NetworkHelp n;
    var decoded;
    n = NetworkHelp(
        'http://api.openweathermap.org/data/2.5/weather?q=$cityName&appid=$api&units=metric');
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
        'http://api.openweathermap.org/data/2.5/weather?lat=${location.latitude}&lon=${location.longitude}&appid=$api&units=metric');
    decoded = await n.getData();

    return decoded;
  }

  String getWeatherIcon(int condition) {
    if (condition < 300) {
      return '🌩';
    } else if (condition < 400) {
      return '🌧';
    } else if (condition < 600) {
      return '☔️';
    } else if (condition < 700) {
      return '☃️';
    } else if (condition < 800) {
      return '🌫';
    } else if (condition == 800) {
      return '☀️';
    } else if (condition <= 804) {
      return '☁️';
    } else {
      return '🤷‍';
    }
  }

  String getMessage(int temp) {
    if (temp > 25) {
      return 'It\'s 🍦 time';
    } else if (temp > 20) {
      return 'Time for shorts and 👕';
    } else if (temp < 10) {
      return 'You\'ll need 🧣 and 🧤';
    } else {
      return 'Bring a 🧥 just in case';
    }
  }
}
