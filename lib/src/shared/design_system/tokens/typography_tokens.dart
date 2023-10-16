import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:plant_app_hey_flutter_challenge/src/shared/design_system/tokens/color_tokens.dart';

class PlantAppTypographyTokens {
  static TextStyle dipslayLarge = GoogleFonts.poppins().copyWith(
    fontSize: FontSizeTokens.h1,
    height: LineHeightTokens.h1Height,
    color: ColorTokens.grayScale700,
  );

  static TextStyle displayMedium = GoogleFonts.poppins().copyWith(
    fontSize: FontSizeTokens.h2,
    height: LineHeightTokens.h2Height,
    color: ColorTokens.grayScale700,
  );

  static TextStyle displaySmall = GoogleFonts.poppins().copyWith(
    fontSize: FontSizeTokens.h3,
    height: LineHeightTokens.h3Height,
    color: ColorTokens.grayScale700,
  );

  static TextStyle bodyLarge = GoogleFonts.poppins().copyWith(
    fontSize: FontSizeTokens.body,
    height: LineHeightTokens.bodyHeight,
    color: ColorTokens.grayScale700,
  );

  static TextStyle bodyMedium = GoogleFonts.poppins().copyWith(
    fontSize: FontSizeTokens.sm,
    height: LineHeightTokens.smHeight,
    color: ColorTokens.grayScale700,
  );

  static TextStyle bodySmall = GoogleFonts.poppins().copyWith(
    fontSize: FontSizeTokens.xsm,
    height: LineHeightTokens.xsmHeight,
    color: ColorTokens.grayScale700,
  );

  static TextStyle labelLarge = GoogleFonts.poppins().copyWith(
    fontSize: FontSizeTokens.body,
    height: LineHeightTokens.bodyHeight,
    fontWeight: FontWeightTokens.bold,
    color: ColorTokens.grayScale700,
  );

  static TextStyle titleMedium = GoogleFonts.poppins().copyWith(
    fontSize: FontSizeTokens.h2,
    height: LineHeightTokens.h2Height,
    fontWeight: FontWeightTokens.light,
    decoration: TextDecoration.none,
    color: ColorTokens.grayScale700,
  );

  static TextStyle labelSmall = GoogleFonts.poppins().copyWith(
    fontSize: FontSizeTokens.xxsm,
    height: LineHeightTokens.xxsmHeight,
    fontWeight: FontWeightTokens.bold,
    color: ColorTokens.grayScale700,
  );

  static TextTheme data = TextTheme(
    displayLarge: dipslayLarge,
    displayMedium: displayMedium,
    displaySmall: displaySmall,
    bodyLarge: bodyLarge,
    bodyMedium: bodyMedium,
    bodySmall: bodySmall,
    labelLarge: labelLarge,
    titleMedium: titleMedium,
    labelSmall: labelSmall,
  );
}

class FontSizeTokens {
  static const double h1 = 32;
  static const double h2 = 24;
  static const double h3 = 20;
  static const double body = 16;
  static const double sm = 14;
  static const double xsm = 12;
  static const double xxsm = 8;
}

class FontWeightTokens {
  static const FontWeight light = FontWeight.w200;
  static const FontWeight regular = FontWeight.w500;
  static const FontWeight bold = FontWeight.w700;
}

class LineHeightTokens {
  static const double h1Height = 40 / FontSizeTokens.h1;
  static const double h2Height = 32 / FontSizeTokens.h2;
  static const double h3Height = 28 / FontSizeTokens.h3;
  static const double bodyHeight = 24 / FontSizeTokens.body;
  static const double smHeight = 20 / FontSizeTokens.sm;
  static const double xsmHeight = 16 / FontSizeTokens.sm;
  static const double xxsmHeight = 10 / FontSizeTokens.xxsm;
}
