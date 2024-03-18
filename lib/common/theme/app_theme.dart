import 'dart:math';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

enum ThemeType {
  light,
  dark,
}

class AppTheme {
  static ThemeType defaultTheme = ThemeType.light;

  //Theme Colors
  bool isDark;
  Color primaryColor;
  Color secondaryColor;
  Color fontColor;
  Color sidebarColor;
  Color successColor;
  Color warningColor;
  Color dangerColor;
  Color infoColor;
  Color pinkColor;

  /// Default constructor
  AppTheme(
      {required this.isDark,
      required this.primaryColor,
      required this.secondaryColor,
      required this.fontColor,
      required this.sidebarColor,
      required this.successColor,
      required this.warningColor,
      required this.dangerColor,
      required this.infoColor,
      required this.pinkColor});

  /// fromType factory constructor
  factory AppTheme.fromType(ThemeType t) {
    switch (t) {
      case ThemeType.light:
        return AppTheme(
            isDark: false,
            primaryColor: const Color(0xff7A70BA),
            secondaryColor: const Color(0xff48A3D7),
            fontColor: const Color(0xff3D434A),
            sidebarColor: const Color(0xff2A3650),//0xffF4F7F9
            successColor: const Color(0xff0DA759),
            warningColor: const Color(0xffD77748),
            dangerColor: const Color(0xffE44141),
            infoColor: const Color(0xff29AEF9),
            pinkColor: const Color(0xffC95E9E));
      case ThemeType.dark:
        return AppTheme(
            isDark: true,
            primaryColor: const Color(0xff7A70BA),
            secondaryColor: const Color(0xff48A3D7),
            fontColor: const Color(0xff8D8D8D),
            sidebarColor: const Color(0xff2A3650),
            successColor: const Color(0xff0DA759),
            warningColor: const Color(0xffD77748),
            dangerColor: const Color(0xffE44141),
            infoColor: const Color(0xff29AEF9),
            pinkColor: const Color(0xffC95E9E));
    }
  }

  ThemeData get themeData {
    var t = ThemeData.from(
      textTheme: GoogleFonts.poppinsTextTheme(
          (isDark ? ThemeData.dark() : ThemeData.light()).textTheme),
      useMaterial3: true,
      colorScheme: ColorScheme(
        brightness: isDark ? Brightness.dark : Brightness.light,
        primary: primaryColor,
        secondary: secondaryColor,
        background: fontColor,
        surface: sidebarColor,
        onBackground: successColor,
        onSurface: primaryColor,
        onError: warningColor,
        onPrimary: dangerColor,
        tertiary: infoColor,
        onInverseSurface: pinkColor,
        tertiaryContainer: sidebarColor,
        surfaceTint: sidebarColor,
        surfaceVariant: sidebarColor,
        onSecondary: primaryColor,
        error: dangerColor,
      ),
    );
    return t.copyWith(
      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
      textSelectionTheme: TextSelectionThemeData(
          selectionHandleColor: Colors.transparent, cursorColor: primaryColor),
      buttonTheme: ButtonThemeData(buttonColor: primaryColor),
      highlightColor: primaryColor,
    );
  }
}
