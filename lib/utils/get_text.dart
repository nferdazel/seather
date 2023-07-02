part of 'utils.dart';

String getText(int temp) {
  switch (temp) {
    case < 17:
      return 'You\'ll need 🧣 and 🧤';
    case > 28 && < 33:
      return 'Time for shorts, shades,  and 👕';
    case > 33:
      return 'It\'s 🍦 time';
    default:
      return 'Bring a 🧥 & ☂ (just in case)';
  }
}
