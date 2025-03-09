// lib/widgets/weather_info.dart
import 'package:flutter/material.dart';
import '../models/weather_model.dart';

class WeatherInfo extends StatelessWidget {
  final Weather weather;

  const WeatherInfo({super.key, required this.weather});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          weather.cityName,
          style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
        Text('${weather.temperature}°C', style: const TextStyle(fontSize: 48)),
        Text(weather.condition, style: const TextStyle(fontSize: 24)),
      ],
    );
  }
}
