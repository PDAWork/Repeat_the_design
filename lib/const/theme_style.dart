import 'package:coffe_shop/const/theme_color.dart';
import 'package:flutter/material.dart';

abstract final class ThemeStyle {
  static final ThemeData light = ThemeData(
    outlinedButtonTheme: OutlinedButtonThemeData(
      style: ButtonStyle(
        shape: MaterialStatePropertyAll(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(24),
          ),
        ),
        side: const MaterialStatePropertyAll(
          BorderSide(
            color: ThemeColor.color2,
            width: 2,
          ),
        ),
        minimumSize: const MaterialStatePropertyAll(Size(153, 50)),
      ),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
        shape: MaterialStatePropertyAll(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(24),
          ),
        ),
        minimumSize: const MaterialStatePropertyAll(Size(153, 50)),
        backgroundColor: const MaterialStatePropertyAll(ThemeColor.color2),
      ),
    ),
  );
}
