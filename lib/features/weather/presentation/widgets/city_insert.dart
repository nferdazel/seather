part of 'city_widget.dart';

/// TODO: add Cubit function to the onChanged function
/// to update the city
class CityInsert extends StatelessWidget {
  const CityInsert({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: TextField(
        onChanged: (value) {},
        style: const TextStyle(color: Colors.black),
        decoration: textField,
      ),
    );
  }
}
