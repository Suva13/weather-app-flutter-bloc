import 'dart:convert';

import 'package:weather_app/models/weather_model.dart';
import 'package:http/http.dart' as http;

class WeatherRepository {
  final String apiKey = 'YOUR_API_KEY';

  Future<Weather> fetchWeather(String cityName) async {
    final response = await http.get(
      Uri.parse(
        'https://api.openweathermap.org/data/2.5/weather?q=$cityName&appid=$apiKey&units=metric',
      ),
    );

    if (response.statusCode == 200) {
      return Weather.fromJson(json.decode(response.body));
    } else {
      throw Exception('Failed to load weather');
    }
  }
}
