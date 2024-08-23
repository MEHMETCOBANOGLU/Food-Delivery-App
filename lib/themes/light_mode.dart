import 'package:flutter/material.dart';

ThemeData lightMode = ThemeData(
  colorScheme: ColorScheme.light(
    surface: Color(0xFFFFC107), // Web sitesinin arka plan rengine yakın
    primary: Color(0xFFFFA000), // Sarının biraz daha koyu tonu
    secondary: Colors.black, // Siyah yazı rengi
    tertiary: Colors.white, // Beyaz
    inversePrimary: Colors.grey.shade200, // Web sitesinde kullanılan gri ton
  ),
);
