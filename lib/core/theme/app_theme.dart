import 'package:flutter/material.dart';
import 'package:vaultkeep/core/theme/text_theme.dart';
import 'app_colors.dart';
import 'app_gradients.dart';

class AppTheme {
  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    brightness: Brightness.light,
    scaffoldBackgroundColor: Colors.transparent,
    colorScheme: const ColorScheme.light(
      primary: AppColors.primary,
      surface: AppColors.backgroundLight,
    ),
    extensions: const [
      AppGradients(
        backgroundGradient: RadialGradient(
          center: Alignment.center,
          radius: 1.0,
          colors: [AppColors.softBlueGlowLight, AppColors.backgroundLight],
        ),
      ),
    ],
    textTheme: AppTextTheme.textTheme,
  );

  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    brightness: Brightness.dark,
    scaffoldBackgroundColor: Colors.transparent,
    colorScheme: const ColorScheme.dark(
      primary: AppColors.primary,
      surface: AppColors.backgroundDark,
    ),
    extensions: const [
      AppGradients(
        backgroundGradient: RadialGradient(
          center: Alignment.center,
          radius: 1.0,
          colors: [AppColors.softBlueGlow, AppColors.backgroundDark],
        ),
      ),
    ],
    textTheme: AppTextTheme.textTheme,
  );
}
