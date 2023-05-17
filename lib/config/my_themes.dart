import 'package:flutter/material.dart';
import 'package:flutter_comp/config/colors.dart';

var lightTheme = ThemeData(
  useMaterial3: true,
  scaffoldBackgroundColor: bgColor,
  drawerTheme: const DrawerThemeData(
    backgroundColor: divColor,
    elevation: 0,
  ),
  listTileTheme: const ListTileThemeData(
    selectedColor: titleColor,
    iconColor: grayColor,
    titleTextStyle: TextStyle(color: grayColor, fontFamily: "Rubik"),
    selectedTileColor: bgColor,
  ),
  textTheme: TextTheme(
    headlineLarge: TextStyle(
      fontSize: 30,
      fontWeight: FontWeight.w600,
      fontFamily: "Rubik",
    ),
    titleMedium: TextStyle(
      fontFamily: "Rubik",
      fontSize: 18,
      fontWeight: FontWeight.w500,
    ),
    titleSmall: TextStyle(
      fontFamily: "Rubik",
      fontSize: 15,
      fontWeight: FontWeight.w400,
    ),
  ),
);
