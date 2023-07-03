part of 'city_widget.dart';

/// TODO: implement Cubit here to get city value
class CityGet extends StatelessWidget {
  const CityGet({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      // onPressed: () => Navigator.pop(context, city),
      onPressed: () {},
      child: const Center(
        child: Text(
          'Get Weather',
          style: TextStyle(fontSize: 45, fontWeight: FontWeight.w900),
        ),
      ),
    );
  }
}
