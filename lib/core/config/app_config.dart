import 'package:flutter/material.dart';
import 'package:property/core/config/dependencies/di.dart';


class AppConfig {
  factory AppConfig() {
    return _singleton;
  }
  AppConfig._internal();
  static final AppConfig _singleton = AppConfig._internal();

  //App Configuration
  void init() {
    WidgetsFlutterBinding.ensureInitialized();
    configureDependencies();
  }
}
