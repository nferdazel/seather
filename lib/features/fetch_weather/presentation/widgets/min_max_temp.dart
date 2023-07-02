part of 'weather_widgets.dart';

class MinMaxTemp extends StatelessWidget {
  const MinMaxTemp({super.key, required this.minTemp, required this.maxTemp});
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
