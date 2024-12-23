import 'package:flutter/material.dart';

class AppTheme {
  static const primaryColor = Color(0xFF8B7EF8);
  static const cardColor = Color(0xFF232A2E);
  static const backgroundColor = Color(0xFF1A1A1A);
  static const shadeColor = Color(0xFF2A2A2A);
  static const shadePurple = Color(0xFFCCC8FF);
  static const textColor = Colors.white;
  static TextStyle get fontStyle => const TextStyle(fontFamily: 'proximanova');
  static TextStyle get italicFontStyle =>
      const TextStyle(fontFamily: 'proximanova', fontStyle: FontStyle.italic);

  static ThemeData darkTheme() {
    return ThemeData.dark().copyWith(
      scaffoldBackgroundColor: backgroundColor,
      primaryColor: primaryColor,
      colorScheme: const ColorScheme.dark(
        primary: primaryColor,
        secondary: primaryColor,
        surface: backgroundColor,
      ),
      textTheme: TextTheme(
        displayLarge: fontStyle.copyWith(
          color: textColor,
          fontSize: 24,
          fontWeight: FontWeight.bold,
        ),
        bodyLarge: fontStyle.copyWith(
          color: textColor,
          fontSize: 16,
        ),
        bodyMedium: fontStyle.copyWith(
          color: textColor,
          fontSize: 14,
        ),
        bodySmall: italicFontStyle.copyWith(
          color: textColor,
          fontSize: 12,
        ),
      ),
      cardTheme: CardTheme(
        color: shadeColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      ),
    );
  }
}
