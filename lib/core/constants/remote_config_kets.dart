class FirebaseRemoteConfigKeys {
  static const String welcomeMessage = 'welcome_message';
  static const String displayDiscountedPrice = 'display_discounted_price';
}

class RemoteConfig {
  final String welcomeMessage;
  final bool displayDiscountedPrice;
  RemoteConfig({
    required this.welcomeMessage,
    required this.displayDiscountedPrice,
  });
}
