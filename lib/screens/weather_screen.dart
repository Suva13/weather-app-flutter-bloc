// lib/screens/weather_screen.dart
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/blocs/weather_event.dart';
import 'package:weather_app/blocs/weather_state.dart';
import '../blocs/weather_bloc.dart';
import '../widgets/weather_info.dart';

class WeatherScreen extends StatelessWidget {
  final TextEditingController _cityController = TextEditingController();

  WeatherScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Weather App')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _cityController,
              decoration: const InputDecoration(labelText: 'Enter city name'),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                final cityName = _cityController.text;
                context.read<WeatherBloc>().add(FetchWeather(cityName));
              },
              child: const Text('Get Weather'),
            ),
            const SizedBox(height: 16),
            BlocBuilder<WeatherBloc, WeatherState>(
              builder: (context, state) {
                if (state is WeatherLoading) {
                  return CircularProgressIndicator();
                } else if (state is WeatherLoaded) {
                  return WeatherInfo(weather: state.weather);
                } else if (state is WeatherError) {
                  return Text(state.message);
                }

                return SizedBox();
              },
            ),
          ],
        ),
      ),
    );
  }
}
