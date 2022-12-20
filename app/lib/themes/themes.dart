import 'package:flutter/material.dart';

ThemeData lightThemeData(BuildContext context) {
  return ThemeData.light().copyWith(
    colorScheme: const ColorScheme.light().copyWith(
      primary: const Color(0xffD6DFE4),
      secondary: const Color(0xffEDF4F8),
      onSecondary: const Color(0xff51565A),
    ),
    primaryColor: const Color(0xffD6DFE4),
    scaffoldBackgroundColor: const Color(0xffD6DFE4),
    appBarTheme: const AppBarTheme(
      elevation: 0,
      color: Colors.transparent,
      centerTitle: true,
    ),
  );
}

ThemeData darkThemeData(BuildContext context) {
  return ThemeData.light().copyWith(
    colorScheme: const ColorScheme.light().copyWith(
      primary: const Color(0xff121517),
      secondary: const Color(0xff172026),
      onSecondary: const Color(0xffEDF4F8),
    ),
    primaryColor: const Color(0xfff121517),
    scaffoldBackgroundColor: const Color(0xff121517),
    appBarTheme: const AppBarTheme(
      elevation: 0,
      color: Colors.transparent,
      centerTitle: true,
    ),
  );
}
