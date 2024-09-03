import 'package:flutter/material.dart';

const seedColor = Color(0xFF6750A4);

class AppTheme {
  final bool isDarkmode;

  AppTheme({ required this.isDarkmode });

  ThemeData getTheme() => ThemeData(
    useMaterial3: true,
    colorSchemeSeed: seedColor,
    brightness: isDarkmode ? Brightness.dark : Brightness.light,
    listTileTheme: const ListTileThemeData(
      iconColor: seedColor,
    ),
  );
}
