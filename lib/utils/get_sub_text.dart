String getSubText(int condition) {
  switch (condition) {
    case < 300:
      return 'Thunderstorm';
    case > 300 && < 400:
      return 'Drizzle';
    case > 400 && < 600:
      return 'Hmm it\'s raining';
    case > 600 && < 700:
      return 'Snow';
    case > 700 && < 800:
      return 'Wind\'s howling';
    case == 800:
      return 'Sunny';
    case > 800 && <= 804:
      return 'Cloudy';
    default:
      return 'Fine';
  }
}
