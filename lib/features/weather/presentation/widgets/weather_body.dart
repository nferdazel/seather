part of 'weather_widget.dart';

class WeatherBody extends StatelessWidget {
  const WeatherBody({
    super.key,
    required this.temp,
    required this.subText,
    required this.text,
    required this.city,
    required this.icon,
    required this.minTemp,
    required this.maxTemp,
  });

  final int temp;
  final String subText;
  final String text;
  final String city;
  final Icon icon;
  final int minTemp;
  final int maxTemp;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(50, 30, 50, 80),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: const Color(0xFF0C0C0C),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const SizedBox(height: 10),
          Expanded(flex: 2, child: WeatherTemp(temp)),
          Expanded(flex: 2, child: WeatherSubText(subText)),
          WeatherTextInCity(text: text, city: city),
          const WeatherDivider(),
          Row(
            children: [
              Expanded(child: WeatherIcon(icon)),
              const SizedBox(width: 100),
              Expanded(child: WeatherMinMaxTemp(minTemp, maxTemp)),
            ],
          ),
        ],
      ),
    );
  }
}
