part of 'weather_widgets.dart';

/// TODO: add Cubit function to the onChanged function
/// to update the city
class InsertCity extends StatelessWidget {
  const InsertCity({super.key});

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
