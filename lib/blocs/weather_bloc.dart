import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/blocs/weather_event.dart';
import 'package:weather_app/blocs/weather_state.dart';
import 'package:weather_app/repositories/weather_repository.dart';

class WeatherBloc extends Bloc<WeatherEvent, WeatherState> {
  final WeatherRepository weatherRepository;

  WeatherBloc({required this.weatherRepository}) : super(WeatherInitial()) {
    on<FetchWeather>(_onFetchWeather);
  }

  Future<void> _onFetchWeather(FetchWeather event, emit) async {
    emit(WeatherLoading());
    try {
      final weather = await weatherRepository.fetchWeather(event.cityName);
      emit(WeatherLoaded(weather: weather));
    } catch (error) {
      emit(WeatherError(message: error.toString()));
    }
  }
}
