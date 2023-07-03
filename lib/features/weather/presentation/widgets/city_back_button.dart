part of 'city_widget.dart';

class CityBackButton extends StatelessWidget {
  const CityBackButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topLeft,
      child: TextButton(
        onPressed: () => Navigator.pop(context),
        child: const Icon(
          Icons.arrow_back_ios,
          color: Colors.white,
          size: 30.0,
        ),
      ),
    );
  }
}
