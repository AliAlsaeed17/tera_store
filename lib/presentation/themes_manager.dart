import 'package:flutter/material.dart';
import 'package:tera_store/presentation/colors_manager.dart';
import 'package:tera_store/presentation/fonts_manager.dart';
import 'package:tera_store/presentation/styles_manager.dart';
import 'package:tera_store/presentation/values_manager.dart';

ThemeData getApplicationTheme() {
  return ThemeData(
    // main colors
    primaryColor: ColorManager.primary,
    primaryColorLight: ColorManager.lightPrimary,
    primaryColorDark: ColorManager.darkPrimary,
    disabledColor: ColorManager.grey1,
    splashColor: ColorManager.lightPrimary, // ripple effect color
    // card view theme
    cardTheme: CardTheme(
      color: ColorManager.white,
      shadowColor: ColorManager.grey1,
      elevation: AppSize.s4,
    ),
    // app bar theme
    appBarTheme: AppBarTheme(
        centerTitle: true,
        color: ColorManager.primary,
        elevation: AppSize.s4,
        shadowColor: ColorManager.lightPrimary,
        titleTextStyle: getRegularStyle(
          color: ColorManager.white,
          fontSize: FontSize.s16,
        )),
    // buttun theme
    buttonTheme: ButtonThemeData(
      shape: const StadiumBorder(), // half circle in each side of the buttun
      disabledColor: ColorManager.grey1,
      buttonColor: ColorManager.primary,
      splashColor: ColorManager.lightPrimary,
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        textStyle: getRegularStyle(
          color: ColorManager.white,
          fontSize: FontSize.s17,
        ),
        primary: ColorManager.primary,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(AppSize.s12),
        ),
      ),
    ),
    // text theme
    textTheme: TextTheme(
        headline1: getSemiBoldStyle(
          color: ColorManager.darkGrey,
          fontSize: FontSize.s16,
        ),
        subtitle1: getMediumStyle(
          color: ColorManager.lightGrey,
          fontSize: FontSize.s14,
        ),
        caption: getRegularStyle(
          color: ColorManager.grey1,
          fontSize: FontSize.s12,
        ),
        bodyText1: getRegularStyle(color: ColorManager.grey),
        displayLarge: getLightStyle(
          color: ColorManager.white,
          fontSize: FontSize.s22,
        )),
    // input decoration theme (text form field)
  );
}
