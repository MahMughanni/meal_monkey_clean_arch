import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../app_color/app_color_light.dart';

ThemeData getLightThemeData() => ThemeData(
      iconTheme: _getIconThemeData(),
      textButtonTheme: _getTextButtonThemeData(),
      scaffoldBackgroundColor: AppColorLight.primaryBackGroundColor,
      primaryTextTheme: _getTextTheme(),
      appBarTheme: _getAppBarTheme(),
      backgroundColor: AppColorLight.primaryBackGroundColor,
      textTheme: _getTextTheme(),
      secondaryHeaderColor: AppColorLight.secondaryBackGroundColor,
      bottomNavigationBarTheme: _getBottomNavigationBarThemeData(),
      floatingActionButtonTheme: _getFloatingActionButtonThemeData(),
    );



IconThemeData _getIconThemeData() =>
    const IconThemeData(color: AppColorLight.primaryColor, size: 20);

FloatingActionButtonThemeData _getFloatingActionButtonThemeData() =>
    const FloatingActionButtonThemeData(
      elevation: 10,
      hoverElevation: 10,
      splashColor: AppColorLight.placeholderColor,
    );

TextButtonThemeData _getTextButtonThemeData() => TextButtonThemeData(
        style: TextButton.styleFrom(
      primary: AppColorLight.primaryColor,
      textStyle: const TextStyle(
        fontSize: 14,
        fontWeight: FontWeightConstants.medium,
      ),
    ));

AppBarTheme _getAppBarTheme() => AppBarTheme(
      iconTheme: const IconThemeData(color: AppColorLight.appBarIconDarkColor),
      backgroundColor: AppColorLight.primaryBackGroundColor, centerTitle: false,
      toolbarTextStyle: _getTextStyle(),
// toolbarTextStyle: _getTextStyle(),
    );

TextStyle _getTextStyle() => const TextStyle(
      color: AppColorLight.primaryFontColor,
      fontSize: 30,
      fontWeight: FontWeight.w600,
    );

BottomNavigationBarThemeData _getBottomNavigationBarThemeData() =>
    const BottomNavigationBarThemeData(
      type: BottomNavigationBarType.fixed,
      elevation: 0,
      backgroundColor: AppColorLight.navBtnBackGroundColor,
      selectedItemColor: AppColorLight.primaryColor,
      unselectedIconTheme: IconThemeData(
        color: AppColorLight.placeholderColor,
      ),
    );

TextTheme _getTextTheme() => const TextTheme(
    headline3: TextStyle(
      fontWeight: FontWeightConstants.bold,
      fontSize: 24,
      color: AppColorLight.primaryFontColor,
    ),
    headline6: TextStyle(
      color: AppColorLight.primaryFontColor,
      fontSize: 14,
      fontWeight: FontWeightConstants.medium,
    ),
    headline5: TextStyle(
      color: AppColorLight.primaryFontColor,
      fontSize: 16,
      fontWeight: FontWeightConstants.bold,
    ),
    headline4: TextStyle(
      color: AppColorLight.primaryFontColor,
      fontSize: 20,
      fontWeight: FontWeightConstants.bold,
    ));
