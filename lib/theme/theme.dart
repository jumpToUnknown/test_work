import 'package:flutter/material.dart';

final theme = ThemeData(
  colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xff9b51e0)),
  scaffoldBackgroundColor: Colors.grey,
  primaryColor: const Color(0xff9b51e0),
  useMaterial3: true,
  textTheme: const TextTheme(
    titleLarge: TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.bold,
        fontSize: 34,
        fontFamily: 'SF Pro Display'),
  ),
);
