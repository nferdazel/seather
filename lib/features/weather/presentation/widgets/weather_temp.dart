part of 'weather_widget.dart';

class WeatherTemp extends StatelessWidget {
  const WeatherTemp(this.temp, {super.key});
  final int temp;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20),
      child: Text(
        '$temp°',
        style: const TextStyle(fontSize: 75, fontWeight: FontWeight.bold),
      ),
    );
  }
}
