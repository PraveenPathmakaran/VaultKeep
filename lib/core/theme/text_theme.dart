import 'package:flutter/material.dart';
import 'package:vaultkeep/core/constants/app_font_size.dart';

class AppTextTheme {
  AppTextTheme._();
  static const TextTheme textTheme = TextTheme(
    //splash big title
    displayLarge: TextStyle(
      fontSize: FontSizes.bigTitle,
      fontWeight: FontWeight.bold,
    ),
    // Page titles
    headlineLarge: TextStyle(
      fontSize: FontSizes.pageTitle,
      fontWeight: FontWeight.w700,
    ),

    // Section titles
    titleMedium: TextStyle(
      fontSize: FontSizes.titleMedium,
      fontWeight: FontWeight.w600,
    ),

    // Paragraph
    bodyLarge: TextStyle(
      fontSize: FontSizes.paragraph,
      fontWeight: FontWeight.w400,
    ),

    // Normal text
    bodyMedium: TextStyle(
      fontSize: FontSizes.normal,
      fontWeight: FontWeight.w400,
    ),

    // Small helper
    labelSmall: TextStyle(
      fontSize: FontSizes.small,
      fontWeight: FontWeight.w400,
    ),
  );
}
