class Weather {
  final String cityName;
  final String condition;
  final double temperature;

  const Weather({
    required this.cityName,
    required this.condition,
    required this.temperature,
  });

  factory Weather.fromJson(Map<String, dynamic> json) {
    return Weather(
      cityName: json['name'],
      condition: json['weather'][0]['main'],
      temperature: json['main']['temp'],
    );
  }
}
