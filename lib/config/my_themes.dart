import 'package:flutter/material.dart';
import 'package:flutter_comp/config/colors.dart';

var lightTheme = ThemeData(
  useMaterial3: true,
  scaffoldBackgroundColor: lightBackground,
  appBarTheme: AppBarTheme(
    backgroundColor: lightPrimary,
    titleTextStyle: TextStyle(
      color: lightBackground,
      fontSize: 18,
    ),
  ),
  drawerTheme: const DrawerThemeData(
    backgroundColor: lightPrimaryContainer,
    elevation: 1,
  ),
  listTileTheme: const ListTileThemeData(
    selectedColor: lightBackground,
    iconColor: lightOnPrimaryContainer,
    titleTextStyle: TextStyle(
      color: lightOnPrimaryContainer,
      fontFamily: "Rubik",
    ),
    selectedTileColor: lightOnPrimaryContainer,
    tileColor: lightPrimaryContainer,
    textColor: lightOnPrimaryContainer,
    mouseCursor: MaterialStateMouseCursor.clickable,
  ),
  colorScheme: const ColorScheme.light(
    primary: lightPrimary,
    onBackground: lightOnBackground,
    background: lightBackground,
    primaryContainer: lightPrimaryContainer,
    secondaryContainer: lightSecondryContainer,
    onPrimaryContainer: lightOnPrimaryContainer,
    onSecondaryContainer: lightOnSecondryContainer,
  ),
  textTheme: const TextTheme(
    headlineLarge: TextStyle(
      fontSize: 30,
      fontWeight: FontWeight.w600,
      fontFamily: "Rubik",
      color: lightOnBackground,
    ),
    titleMedium: TextStyle(
      fontFamily: "Rubik",
      fontSize: 18,
      fontWeight: FontWeight.w500,
      color: lightOnBackground,
    ),
    titleSmall: TextStyle(
      fontFamily: "Rubik",
      fontSize: 15,
      fontWeight: FontWeight.w400,
      color: lightOnBackground,
    ),
    labelSmall: TextStyle(
      fontFamily: "Rubik",
      fontSize: 12,
      color: lightOnSecondryContainer,
      fontWeight: FontWeight.w400,
    ),
    bodyMedium: TextStyle(
      fontFamily: "Rubik",
      fontSize: 15,
      color: lightOnSecondryContainer,
      fontWeight: FontWeight.w400,
    ),
  ),
);
