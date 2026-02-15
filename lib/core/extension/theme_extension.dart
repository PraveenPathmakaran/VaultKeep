import 'package:flutter/material.dart';

extension ThemeContextExtension on BuildContext {

  /// Shortcut for Theme.of(context)
  ThemeData get theme => Theme.of(this);

  /// Shortcut for TextTheme
  TextTheme get text => theme.textTheme;

  /// Shortcut for ColorScheme
  ColorScheme get colors => theme.colorScheme;

  /// Shortcut for MediaQuery
  Size get screenSize => MediaQuery.of(this).size;

  double get screenWidth => screenSize.width;

  double get screenHeight => screenSize.height;
}
