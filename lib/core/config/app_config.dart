import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:property/core/config/dependencies/di.dart';
import 'package:property/firebase_options.dart';

class AppConfig {
  factory AppConfig() {
    return _singleton;
  }
  AppConfig._internal();
  static final AppConfig _singleton = AppConfig._internal();

  //App Configuration
  Future<void> init() async {
    WidgetsFlutterBinding.ensureInitialized();
    await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform,
    );
    configureDependencies();
  }
}
