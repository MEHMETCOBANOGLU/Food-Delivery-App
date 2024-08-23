import 'package:flutter/material.dart';

ThemeData darkMode = ThemeData(
  colorScheme: ColorScheme.dark(
    surface: Color(0xFF212121), // Koyu gri arka plan
    primary: Color(0xFFFFA000), // Sarı vurgu rengi
    secondary: Color(0xFFFFC107), // Web sitesinin ana sarı rengi
    tertiary: Colors.white, // Beyaz yazı rengi
    inversePrimary: Colors.grey.shade700, // Koyu gri
  ),
);
