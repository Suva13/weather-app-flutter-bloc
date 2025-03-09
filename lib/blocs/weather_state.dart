import 'package:equatable/equatable.dart';
import 'package:weather_app/models/weather_model.dart';

abstract class WeatherState extends Equatable {
  @override
  List<Object> get props => [];
}

class WeatherInitial extends WeatherState {}

class WeatherLoading extends WeatherState {}

class WeatherLoaded extends WeatherState {
  final Weather weather;

  WeatherLoaded({required this.weather});

  @override
  List<Object> get props => [weather];
}

class WeatherError extends WeatherState {
  final String message;
  WeatherError({required this.message});

  @override
  List<Object> get props => [message];
}
