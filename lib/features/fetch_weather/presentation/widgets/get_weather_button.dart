part of 'weather_widgets.dart';

/// TODO: implement Cubit here to get city value
class GetWeatherButton extends StatelessWidget {
  const GetWeatherButton(this.city, {super.key});
  final String? city;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () => Navigator.pop(context, city),
      child: const Center(
        child: Text(
          'Get Weather',
          style: TextStyle(fontSize: 45, fontWeight: FontWeight.w900),
        ),
      ),
    );
  }
}
