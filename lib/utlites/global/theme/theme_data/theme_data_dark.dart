import 'package:clean_architecture_meal_monky/utlites/global/theme/app_color/app_color_dark.dart';
import 'package:flutter/material.dart';

ThemeData getThemeDataDark() => ThemeData(
    // primaryColor: Colors.white,
    appBarTheme: const AppBarTheme(
      centerTitle: false,
      backgroundColor: AppColorDark.appBarDarkColor,
      toolbarTextStyle: TextStyle(color: AppColorDark.appBarTextDarkColor),
      actionsIconTheme: IconThemeData(color: AppColorDark.appBarIconDarkColor),
      iconTheme: IconThemeData(color: AppColorDark.appBarIconDarkColor),
    ),
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: Colors.orange,
    ));
