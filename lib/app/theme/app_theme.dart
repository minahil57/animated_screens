import 'package:flutter/material.dart';

class AppTheme {
  static const Color _background = Color(0xFF0E0E12);
  static const Color _surface = Color(0xFF1A1A22);
  static const Color _accent = Color(0xFFE8A0BF);
  static const Color _onSurface = Color(0xFFF2F2F5);

  static ThemeData get dark {
    final base = ThemeData(
      useMaterial3: true,
      brightness: Brightness.dark,
      colorScheme: ColorScheme.fromSeed(
        seedColor: _accent,
        brightness: Brightness.dark,
        surface: _surface,
      ),
    );

    return base.copyWith(
      scaffoldBackgroundColor: _background,
      appBarTheme: const AppBarTheme(
        backgroundColor: _background,
        foregroundColor: _onSurface,
        elevation: 0,
        centerTitle: false,
      ),
      cardTheme: CardThemeData(
        color: _surface,
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
      ),
      textTheme: base.textTheme.apply(
        bodyColor: _onSurface,
        displayColor: _onSurface,
      ),
      dividerColor: _onSurface.withValues(alpha: 0.08),
    );
  }
}
