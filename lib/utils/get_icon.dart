part of 'utils.dart';

Icon icond(IconData icon) => Icon(icon, color: Colors.blue);

Icon getIcon(int condition) {
  switch (condition) {
    case < 300:
      return icond(WeatherIcons.thunderstorm);
    case > 300 && < 400:
      return icond(WeatherIcons.rain_mix);
    case > 400 && < 600:
      return icond(WeatherIcons.rain);
    case > 600 && < 700:
      return icond(WeatherIcons.snowflake_cold);
    case > 700 && < 800:
      return icond(WeatherIcons.day_windy);
    case == 800:
      return icond(WeatherIcons.day_sunny);
    case > 800 && <= 804:
      return icond(WeatherIcons.cloud);
    default:
      return const Icon(Icons.abc, color: Colors.transparent);
  }
}
