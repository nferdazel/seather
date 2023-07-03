part of 'weather_widget.dart';

class LocationCityName extends StatelessWidget {
  const LocationCityName(this.city, {super.key});
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
