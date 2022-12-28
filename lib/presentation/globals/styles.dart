import 'package:flutter/material.dart';

import 'colors.dart';

class Styles {
  static const TextStyle headlineLarge = TextStyle(
    fontSize: 48,
    fontFamily: 'CormorantGaramond',
    letterSpacing: 2,
    color: primary,
  );
  static TextStyle headlineSmall(Color color) => TextStyle(
        fontFamily: 'CormorantGaramond',
        fontSize: 24,
        fontWeight: FontWeight.w500,
        letterSpacing: 2,
        color: color,
      );
  static TextStyle displayMedium(Color color) => TextStyle(
    fontSize: 64,
    fontFamily: 'CormorantGaramond',
    letterSpacing: 2,
    fontWeight: FontWeight.w500,
    color: color,
  );
  static bodyLarge(Color color) => TextStyle(
        fontFamily: 'PTSansNarrow',
        fontSize: 20,
        letterSpacing: 1.2,
        wordSpacing: 1.5,
        fontWeight: FontWeight.bold,
        color: color,
      );
  static bodyMedium([Color color = const Color.fromRGBO(189, 189, 189, 1)]) =>
      TextStyle(
        fontFamily: 'PTSansNarrow',
        fontSize: 20,
        letterSpacing: 1.2,
        wordSpacing: 1.5,
        color: color,
      );
  static bodySmall([Color color = const Color.fromRGBO(189, 189, 189, 1)]) =>
      TextStyle(
        fontFamily: 'PTSansNarrow',
        fontSize: 16,
        letterSpacing: 1,
        wordSpacing: 1.5,
        color: color,
      );
}
