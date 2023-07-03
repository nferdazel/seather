part of 'weather_widget.dart';

class WeatherIcon extends StatelessWidget {
  const WeatherIcon(this.icon, {super.key});
  final Icon icon;

  @override
  Widget build(BuildContext context) {
    return Padding(padding: const EdgeInsets.only(bottom: 38), child: icon);
  }
}
