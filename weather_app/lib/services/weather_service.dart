import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:weather_app/models/weather_model.dart';

class WeatherService {
  Future<WeatherModel?> getWeather({required String cityName}) async {
    WeatherModel? WeatherData;
    try {
      String baseurl = "http://api.weatherapi.com/v1";
      String apikey = "b0d47712d22c4f029e8122236231504";
      Uri url =
          Uri.parse('$baseurl/forecast.json?key=$apikey&q=$cityName&days=7');
      http.Response response = await http.get(url);

      Map<String, dynamic> data = jsonDecode(response.body);

      WeatherModel.fromJson(data);
    } catch (e) {
      print(e);
    }

    return WeatherData;
  }
}
