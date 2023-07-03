part of 'weather_widget.dart';

class WeatherMinMaxTemp extends StatelessWidget {
  const WeatherMinMaxTemp(this.minTemp, this.maxTemp, {super.key});
  final int minTemp;
  final int maxTemp;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10, bottom: 30),
      child: Text(
        '$minTemp° to $maxTemp°',
        style: TextStyle(fontSize: 20, color: Colors.grey[500]),
      ),
    );
  }
}
