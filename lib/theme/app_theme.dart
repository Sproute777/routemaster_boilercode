import 'package:flutter/material.dart';
import 'colors.dart';


enum AppTheme {
  yellowLight,
  yellowDark,
  redLight,
  redDark,
  tealLight,
  tealDark,
  greenLight,
  greenDark,
}

final appThemeData = {
  AppTheme.yellowLight: ThemeData(
    brightness: Brightness.light,
    primaryColor: primaryYellow,
    scaffoldBackgroundColor: white1,
    primaryColorLight: white2,
    primaryColorDark: secondaryGrey,
    colorScheme: const ColorScheme.light(
      primary: primaryYellow,
    ),

  ),
  AppTheme.yellowDark: ThemeData(
    brightness: Brightness.dark,
    primaryColor: secondaryYellow,
    scaffoldBackgroundColor: primaryGrey,
    primaryColorDark: white2,
    primaryColorLight: secondaryGrey,
    colorScheme: const ColorScheme.dark(
      primary: secondaryYellow,
    ),
  ),
  AppTheme.redLight: ThemeData(
    brightness: Brightness.light,
    primaryColor: primaryRed,
    scaffoldBackgroundColor: white1,
    primaryColorLight: white2,
    primaryColorDark: secondaryDBlue,
    colorScheme: const ColorScheme.light(
      primary: primaryRed,
    ),
  ),
  AppTheme.redDark: ThemeData(
    brightness: Brightness.dark,
    primaryColor: primaryRed,
    scaffoldBackgroundColor: primaryDBlue,
    primaryColorDark: white2,
    primaryColorLight: secondaryDBlue,
    colorScheme: const ColorScheme.dark(
      primary: primaryRed,
    ),
  ),
  AppTheme.tealLight: ThemeData(
    brightness: Brightness.light,
    primaryColor: primaryTeal,
    scaffoldBackgroundColor: white1,
    primaryColorLight: white2,
    primaryColorDark: secondaryDGrey,
    colorScheme: const ColorScheme.light(
      primary: primaryTeal,
    ),
  ),
  AppTheme.tealDark: ThemeData(
    brightness: Brightness.dark,
    primaryColor: primaryTeal,
    scaffoldBackgroundColor: primaryDGrey,
    primaryColorDark: white2,
    primaryColorLight: secondaryDGrey,
    colorScheme: const ColorScheme.dark(
      primary: primaryTeal,
    ),
  ),
  AppTheme.greenLight: ThemeData(
    brightness: Brightness.light,
    primaryColor: primaryGreen,
    scaffoldBackgroundColor: white1,
    primaryColorLight: white2,
    primaryColorDark: secondaryBGrey,
    colorScheme: const ColorScheme.light(
      primary: primaryGreen,
    ),
  ),
  AppTheme.greenDark: ThemeData(
    brightness: Brightness.dark,
    primaryColor: primaryGreen,
    scaffoldBackgroundColor: primaryBGrey,
    primaryColorDark: white2,
    primaryColorLight: secondaryBGrey,
    colorScheme: const ColorScheme.dark(
      primary: primaryGreen,
    ),
  ),
};