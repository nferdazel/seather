part of 'weather_widgets.dart';

class TempWidget extends StatelessWidget {
  const TempWidget({super.key, required this.temp});
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
