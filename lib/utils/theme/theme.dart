import 'package:flutter/material.dart';
import 'package:flutter_to_do_app/utils/theme/custom_themes/appbar_theme.dart';
import 'package:flutter_to_do_app/utils/theme/custom_themes/checkbox_theme.dart';
import 'package:flutter_to_do_app/utils/theme/custom_themes/elevated_button_theme.dart';
import 'package:flutter_to_do_app/utils/theme/custom_themes/text_field_theme.dart';
import 'package:flutter_to_do_app/utils/theme/custom_themes/text_theme.dart';

class MAppTheme{
  MAppTheme._();

  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    brightness: Brightness.light,
    primaryColor: Colors.blue,
    scaffoldBackgroundColor: Colors.white,
    textTheme: MTextTheme.lightTextTheme,
    appBarTheme: MAppbarTheme.lightAppbarTheme,
    checkboxTheme: MCheckboxTheme.lightCheckboxTheme,
    elevatedButtonTheme: MElevatedButtonTheme.lightElevatedButtonTheme,
    inputDecorationTheme: MTextFormFieldTheme.lightInputDecorationTheme,
  );
  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    brightness: Brightness.dark,
    primaryColor: Colors.blue,
    scaffoldBackgroundColor: Colors.black,
    textTheme: MTextTheme.darkTextTheme,
    appBarTheme: MAppbarTheme.darkAppbarTheme,
    checkboxTheme: MCheckboxTheme.darkCheckboxTheme,
    elevatedButtonTheme: MElevatedButtonTheme.darkElevatedButtonTheme,
    inputDecorationTheme: MTextFormFieldTheme.darkInputDecorationTheme,
  );
}