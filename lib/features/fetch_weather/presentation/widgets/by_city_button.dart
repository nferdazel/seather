part of 'weather_widgets.dart';

class ByCityButton extends StatelessWidget {
  const ByCityButton({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      /// TODO: navigate to city page
      /// if it null, then update the UI
      onPressed: () async {},
      child: const Icon(
        FontAwesomeIcons.city,
        size: 28,
        color: Colors.blueAccent,
      ),
    );
  }
}
