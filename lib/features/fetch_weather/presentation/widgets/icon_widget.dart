part of 'weather_widgets.dart';

class IconWidget extends StatelessWidget {
  const IconWidget(this.icon, {super.key});
  final Icon icon;

  @override
  Widget build(BuildContext context) {
    return Padding(padding: const EdgeInsets.only(bottom: 38), child: icon);
  }
}
