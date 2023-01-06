import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../app_color/app_color_light.dart';

ThemeData getLightThemeData() => ThemeData(
      iconTheme:
          const IconThemeData(color: AppColorLight.primaryColor, size: 20),
      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(
          primary: AppColorLight.primaryColor,
          textStyle: const TextStyle(
            fontSize: 14,
            fontWeight: FontWeightConstants.medium,
          ),
        ),
      ),
      scaffoldBackgroundColor: AppColorLight.primaryBackGroundColor,
      primaryTextTheme: _getTextTheme(),
      appBarTheme: _getAppBarTheme(),
      backgroundColor: AppColorLight.primaryBackGroundColor,
      textTheme: _getTextTheme(),
      secondaryHeaderColor: AppColorLight.secondaryBackGroundColor,
      bottomNavigationBarTheme: _getBottomNavigationBarThemeData(),
    );

TextStyle _getTextStyle() => const TextStyle(
      color: AppColorLight.primaryFontColor,
      fontSize: 16,
      fontWeight: FontWeight.w600,
    );

AppBarTheme _getAppBarTheme() => AppBarTheme(
      iconTheme: const IconThemeData(color: AppColorLight.appBarIconDarkColor),
      backgroundColor: AppColorLight.primaryBackGroundColor,
      centerTitle: false,
      toolbarTextStyle: _getTextStyle(),
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