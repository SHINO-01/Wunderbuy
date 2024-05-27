import "package:flutter/material.dart";
import "package:wunderbuy/utils/themes/custom_themes/app_bar_theme.dart";
import "package:wunderbuy/utils/themes/custom_themes/bottom_sheet_theme.dart";
import "package:wunderbuy/utils/themes/custom_themes/checkbox_theme.dart";
import "package:wunderbuy/utils/themes/custom_themes/chip_theme.dart";
import "package:wunderbuy/utils/themes/custom_themes/elevated_button_theme.dart";
import "package:wunderbuy/utils/themes/custom_themes/outlined_button_theme.dart";
import "package:wunderbuy/utils/themes/custom_themes/text_form_field_theme.dart";
import "package:wunderbuy/utils/themes/custom_themes/text_theme.dart";

class CAppTheme {
  //C as in custom classes
  CAppTheme._();

  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.light,
    primaryColor: Colors.green[400],
    scaffoldBackgroundColor: Colors.white,
    textTheme: CTextTheme.lightTextTheme,
    elevatedButtonTheme: CElevatedButtonTheme.lightElevatedButtonTheme,
    appBarTheme: CAppBarTheme.lightAppBarTheme,
    bottomSheetTheme: CBottomSheetTheme.lightBottomSheetTheme,
    checkboxTheme: CCheckboxTheme.lightCheckBoxTheme,
    chipTheme: CChipTheme.lightChipTheme,
    outlinedButtonTheme: COutlinedButtonTheme.lightOutlinedButtonTheme,
    inputDecorationTheme: CTextFormFieldTheme.lightInputDecorationTheme,
  );
  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.dark,
    primaryColor: Colors.green[400],
    scaffoldBackgroundColor: Colors.black54,
    textTheme: CTextTheme.darkTextTheme,
    elevatedButtonTheme: CElevatedButtonTheme.darkElevatedButtonTheme,
    appBarTheme: CAppBarTheme.darkAppBarTheme,
    bottomSheetTheme: CBottomSheetTheme.darkBottomSheetTheme,
    checkboxTheme: CCheckboxTheme.darkCheckBoxTheme,
    chipTheme: CChipTheme.darkChipTheme,
    outlinedButtonTheme: COutlinedButtonTheme.darkOutlinedButtonTheme,
    inputDecorationTheme: CTextFormFieldTheme.darkInputDecorationTheme,
  );
}
