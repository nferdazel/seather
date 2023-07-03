part of 'weather_widget.dart';

class WeatherDivider extends StatelessWidget {
  const WeatherDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return const Expanded(
      child: SizedBox(child: Divider(color: Colors.blueAccent)),
    );
  }
}
