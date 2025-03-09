import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/blocs/weather_bloc.dart';
import 'package:weather_app/repositories/weather_repository.dart';
import 'package:weather_app/screens/weather_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BlocProvider(
        create:
            (context) => WeatherBloc(weatherRepository: WeatherRepository()),
        child: WeatherScreen(),
      ),
    );
  }
}
