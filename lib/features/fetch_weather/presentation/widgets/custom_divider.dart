part of 'weather_widgets.dart';

class CustomDivider extends StatelessWidget {
  const CustomDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return const Expanded(
      child: SizedBox(child: Divider(color: Colors.blueAccent)),
    );
  }
}
