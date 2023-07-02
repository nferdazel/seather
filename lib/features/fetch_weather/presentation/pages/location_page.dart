import 'package:flutter/material.dart';

import '../widgets/weather_widgets.dart';

class LocationPage extends StatelessWidget {
  const LocationPage({
    super.key,
    required this.temp,
    required this.icon,
    required this.text,
    required this.minTemp,
    required this.maxTemp,
    required this.subText,
    required this.city,
  });

  final int temp;
  final Icon icon;
  final String text;
  final int minTemp;
  final int maxTemp;
  final String subText;
  final String city;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const Row(
              children: [
                ByGpsButton(),
                ByCityButton(),
              ],
            ),
            CityName(city),
            Expanded(
              flex: 9,
              child: WeatherBody(
                temp: temp,
                subText: subText,
                text: text,
                city: city,
                icon: icon,
                minTemp: minTemp,
                maxTemp: maxTemp,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
