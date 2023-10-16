// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:ui_ovo/utility/Constant.dart';

TextTheme basetextTheme(TextTheme base) {
  return base.copyWith(
      headline6: base.headline6?.copyWith(
        fontSize: 17,
        fontWeight: FontWeight.w700,
      ),
      subtitle1: base.subtitle1!.copyWith(
        fontSize: 12,
        color: greytext,
      ));
}

ThemeData mytheme() {
  final ThemeData base = ThemeData.light();
  return base.copyWith(
      textTheme: basetextTheme(base.textTheme),
      floatingActionButtonTheme: FloatingActionButtonThemeData(
          backgroundColor: darkpurple,
          elevation: 0,
          splashColor: Colors.transparent),
      appBarTheme: AppBarTheme(color: darkpurple, elevation: 0),
      scaffoldBackgroundColor: Colors.grey[100], colorScheme: ColorScheme.fromSwatch().copyWith(secondary: darkpurple));
}