import 'package:flutter/material.dart';

part 'app_colors.dart';

class AppTheme {
  static final AppColors colors = AppColors();
}

extension AppThemeExtension on BuildContext {
  AppColors get appColors => AppTheme.colors;
}
