import 'package:flutter/material.dart';
import 'package:ui_ecommerce/constant.dart';

ThemeData themeData(bool isDarkMode) {
  return ThemeData(
      fontFamily: 'Muli',
      brightness: isDarkMode ? Brightness.dark : Brightness.light,
      appBarTheme: AppBarTheme(
          elevation: 0,
          iconTheme: IconThemeData(color: isDarkMode ? Colors.white : Colors.black),
          titleTextStyle: TextStyle(
            color: isDarkMode ? Colors.white : Colors.black,
            fontSize: 20,
          )),
      textTheme: textTheme(),
      visualDensity: VisualDensity.adaptivePlatformDensity,
      inputDecorationTheme: inputDecorationTheme());
}

  TextTheme textTheme() {
    return const TextTheme(
        titleMedium: TextStyle(color: kTextColor),
        bodyMedium: TextStyle(color: kTextColor),
      );
  }

  InputDecorationTheme inputDecorationTheme() {

    var outlineInputBorder = const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(28)),
              borderSide: BorderSide(color: kPrimaryColor),
              gapPadding: 10);

    return InputDecorationTheme(
          contentPadding: const EdgeInsets.symmetric(horizontal: 42, vertical: 20),
          labelStyle: const TextStyle(color: kPrimaryColor),
          enabledBorder: outlineInputBorder,
          focusedBorder: outlineInputBorder,
          border: outlineInputBorder,
        );
  }
