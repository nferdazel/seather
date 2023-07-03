part of 'weather_widget.dart';

class ByGpsButton extends StatelessWidget {
  const ByGpsButton({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      /// TODO: get weather here
      onPressed: () async {},
      child: const Icon(
        Icons.gps_fixed,
        size: 30,
        color: Colors.blueAccent,
      ),
    );
  }
}
