part of 'weather_widgets.dart';

class CityName extends StatelessWidget {
  const CityName({super.key, required this.city});
  final String city;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(50, 20, 50, 0),
      child: Text(
        city,
        textAlign: TextAlign.left,
        style: const TextStyle(fontSize: 35),
      ),
    );
  }
}