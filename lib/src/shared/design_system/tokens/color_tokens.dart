import 'package:flutter/material.dart';

class ColorTokens {
  static const Color grayScale100 = Color(0xFFDFDFE2);
  static const Color grayScale300 = Color(0xFFB4B4B4);
  static const Color grayScale500 = Color(0xFF64625D);
  static const Color grayScale700 = Color(0xFF161D0D);

  static const Color primaryMain = Color(0xFF7F8F51);
  static const Color primaryDark = Color(0xFF2E5111);

  static const Color supportDangerMain = Color(0xFFFF5151);

  static const ColorScheme scheme = ColorScheme(
    brightness: Brightness.light,
    primary: ColorTokens.primaryMain,
    onPrimary: ColorTokens.grayScale700,
    secondary: ColorTokens.grayScale100,
    onSecondary: ColorTokens.grayScale500,
    error: ColorTokens.supportDangerMain,
    onError: ColorTokens.grayScale100,
    background: ColorTokens.grayScale100,
    onBackground: ColorTokens.grayScale700,
    surface: ColorTokens.grayScale500,
    onSurface: ColorTokens.grayScale100,
  );
}
