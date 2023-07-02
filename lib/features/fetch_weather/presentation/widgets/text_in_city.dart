part of 'weather_widgets.dart';

class TextInCity extends StatelessWidget {
  const TextInCity({super.key, required this.text, required this.city});
  final String text;
  final String city;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 0, 10, 50),
      child: Text(
        '$text in $city',
        style: TextStyle(fontSize: 21, color: Colors.grey[500]),
      ),
    );
  }
}
