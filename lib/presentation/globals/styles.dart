import 'package:flutter/material.dart';

import 'colors.dart';

class Styles {
  static TextStyle headlineLarge({double fontSize = 48}) => TextStyle(
    fontSize: fontSize,
    fontFamily: 'CormorantGaramond',
    letterSpacing: 2,
    color: primary,
  );
  static TextStyle headlineSmall(Color color, {double fontSize = 24}) => TextStyle(
        fontFamily: 'CormorantGaramond',
        fontSize: fontSize,
        fontWeight: FontWeight.w500,
        letterSpacing: 2,
        color: color,
      );
  static TextStyle displayMedium(Color color, {double fontSize = 64}) => TextStyle(
    fontSize: fontSize,
    fontFamily: 'CormorantGaramond',
    letterSpacing: 2,
    fontWeight: FontWeight.w500,
    color: color,
  );
  static bodyLarge(Color color, {double fontSize = 20}) => TextStyle(
        fontFamily: 'PTSansNarrow',
        fontSize: fontSize,
        letterSpacing: 1.2,
        wordSpacing: 1.5,
        fontWeight: FontWeight.bold,
        color: color,
      );
  static bodyMedium({Color color = const Color.fromRGBO(189, 189, 189, 1), double fontSize = 20}) =>
      TextStyle(
        fontFamily: 'PTSansNarrow',
        fontSize: fontSize,
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
