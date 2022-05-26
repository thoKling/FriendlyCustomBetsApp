import 'package:flutter/material.dart';

abstract class HolwegColors {
  // On doit faire ca pour avoir une palette de blanc
  static const MaterialColor _whiteSwatch = MaterialColor(
    0xFFFFFFFF,
    <int, Color>{
      50: Color(0xFFFFFFFF),
      100: Color(0xFFFFFFFF),
      200: Color(0xFFFFFFFF),
      300: Color(0xFFFFFFFF),
      400: Color(0xFFFFFFFF),
      500: Color(0xFFFFFFFF),
      600: Color(0xFFFFFFFF),
      700: Color(0xFFFFFFFF),
      800: Color(0xFFFFFFFF),
      900: Color(0xFFFFFFFF),
    },
  );

  /// Couleurs spécifiques qui dépendent de l'endroit et qu'on peut donc
  /// difficilement renseigner dans le theme
  static const colorPrimary = Color(0xFF001E36);
  static const colorPrimaryDark = Color(0xFF303F9F);
  static const colorSecondary = Color(0xFFFFDD00);
  static const colorTertiary = Color(0xFFFFFFFF);
  static const colorGreyLight = Color(0xFFF4F4F4);

  // Bottom bar navigation
  static const colorIconNotSelected = Color(0xFFAAAAAA);
  static const colorIconSelected = colorBlueButton;

  static const colorOk = Color(0xFF33B71D);
  static const colorKo = Color(0xFFBC0303);
  static const colorText = Color(0xFF001E36);
  static const colorTextLight = Color(0xFFE5E5E5);
  static const colorBackgroundIncomeMsg = Color(0xFF135FAB);
  static const colorBackgroundOwnMsg = Color(0xFFE5E8ED);
  static const colorBackgroundMsgError = Color(0xFFFF0000);
  static const colorBlueButton = Color(0xFF0070B7);
  static const colorBlackText = Color(0xFF1C1C1D);
  static const colorHint = Color(0xFF8F8F8F);
  static const colorWhite = Color(0xFFFFFFFF);
  static const colorHtmlLink = Color(0xFF005CA8);

  static const grayProductionStatus = Color(0xFF484848);
  static const orangeProductionStatus = Color(0xFFFDB246);
  static const greenProductionStatus = Color(0xFF07C756);
  static const redProductionStatus = Color(0xFFFE3A3A);
  static const greyHourLabel = Color(0xFF3F3F3F);

  static const machineCellBackground = Color(0xFFE5E8ED);
  static const doneText = Color(0xFF33B71D);
  static const inProgressText = Color(0xFF135FAB);
  static const notStartedText = Color(0xFF7F807F);
}

final appTheme = ThemeData(
  scaffoldBackgroundColor: Colors.transparent,
  appBarTheme: const AppBarTheme(backgroundColor: Colors.transparent),
  primaryColor: HolwegColors.colorPrimary,
  primarySwatch: HolwegColors._whiteSwatch,
  colorScheme: ColorScheme.fromSwatch(
    primarySwatch: HolwegColors._whiteSwatch,
    accentColor: HolwegColors.colorSecondary,
  ),
  fontFamily: 'Raleway',
  textSelectionTheme: const TextSelectionThemeData(
    cursorColor: HolwegColors.colorSecondary,
    selectionHandleColor: HolwegColors.colorSecondary,
    selectionColor: HolwegColors.colorSecondary,
  ),
  textTheme: const TextTheme(
    headline2: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
    headline3: TextStyle(fontWeight: FontWeight.w600, fontSize: 17),
    headline6: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
    bodyText1: TextStyle(fontSize: 12),
  ),
  textButtonTheme: TextButtonThemeData(
    style: TextButton.styleFrom(
      textStyle: const TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
      minimumSize: const Size(0, 0),
      maximumSize: const Size(double.infinity, 20),
      backgroundColor: HolwegColors.colorSecondary,
      padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 7),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(25.0),
      ),
    ),
  ),
  outlinedButtonTheme: OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      padding: const EdgeInsets.only(right: 8, top: 5, bottom: 5, left: 15),
      textStyle: const TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 12,
      ),
      //primary: HolwegColors.black,
      backgroundColor: HolwegColors.colorPrimary,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(25.0),
      ),
    ),
  ),
);
