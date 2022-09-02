import 'package:flutter/material.dart';

import '../../core/const.dart';

abstract class CustomTheme {
  static ThemeData get mainTheme => ThemeData(
    visualDensity: VisualDensity.adaptivePlatformDensity,
    brightness: Brightness.light,
    buttonTheme: const ButtonThemeData(textTheme: ButtonTextTheme.primary),
    colorScheme: ColorScheme.fromSwatch(primarySwatch: kPrimaryColor)
        .copyWith(secondary: kAccentColor),
  );
}