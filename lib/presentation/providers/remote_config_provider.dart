import 'package:firebase_remote_config/firebase_remote_config.dart';
import 'package:flutter/material.dart';

import '../../core/constants/remote_config_kets.dart';

class RemoteConfigProvider with ChangeNotifier {
  final FirebaseRemoteConfig _remoteConfig;
  RemoteConfig _configValues = RemoteConfig(
    welcomeMessage: 'Welcome to the app!',
    displayDiscountedPrice: false,
  );

  RemoteConfigProvider() : _remoteConfig = FirebaseRemoteConfig.instance {
    _initializeRemoteConfig();
    _remoteConfig.onConfigUpdated.listen((event) async {
      await _remoteConfig.activate();
      updateConfigValues();
    });
  }

  Future<void> _initializeRemoteConfig() async {
    try {
      await _remoteConfig.setConfigSettings(
        RemoteConfigSettings(
          fetchTimeout: const Duration(minutes: 1),
          minimumFetchInterval: const Duration(seconds: 5),
        ),
      );
      await _remoteConfig.setDefaults(<String, dynamic>{
        FirebaseRemoteConfigKeys.welcomeMessage: _configValues.welcomeMessage,
        FirebaseRemoteConfigKeys.displayDiscountedPrice:
            _configValues.displayDiscountedPrice,
      });
      await _remoteConfig.fetchAndActivate();
      updateConfigValues();
    } catch (e) {
      print('Failed to initialize remote config: $e');
    }
  }

  void updateConfigValues() {
    _configValues = RemoteConfig(
      welcomeMessage:
          _remoteConfig.getString(FirebaseRemoteConfigKeys.welcomeMessage),
      displayDiscountedPrice: _remoteConfig
          .getBool(FirebaseRemoteConfigKeys.displayDiscountedPrice),
    );
    notifyListeners();
  }

  RemoteConfig get configValues => _configValues;

  String get welcomeMessage => _configValues.welcomeMessage;
  bool get displayDiscountedPrice => _configValues.displayDiscountedPrice;
}
