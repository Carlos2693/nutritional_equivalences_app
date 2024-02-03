import 'package:flutter/material.dart';

class AppTheme {
  final colorSeed = const Color(0xff424CB8);
  
  ThemeData getTheme() => ThemeData(
    useMaterial3: true,
    colorSchemeSeed: colorSeed,
  );
}
