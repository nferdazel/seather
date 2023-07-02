part of 'weather_widgets.dart';

class SubText extends StatelessWidget {
  const SubText({super.key, required this.subText});
  final String subText;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20),
      child: Text(
        subText,
        style: const TextStyle(fontSize: 30),
      ),
    );
  }
}
