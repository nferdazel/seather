part of 'weather_widgets.dart';

class IconWidget extends StatelessWidget {
  const IconWidget({super.key, required this.icon});
  final Icon icon;

  @override
  Widget build(BuildContext context) {
    return Padding(padding: const EdgeInsets.only(bottom: 38), child: icon);
  }
}
