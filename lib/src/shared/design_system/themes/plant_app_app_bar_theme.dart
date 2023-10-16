import 'package:flutter/material.dart';
import 'package:plant_app_hey_flutter_challenge/src/shared/design_system/tokens/color_tokens.dart';
import 'package:plant_app_hey_flutter_challenge/src/shared/design_system/tokens/typography_tokens.dart';

class PlantAppAppBarTheme {
  static final AppBarTheme data = AppBarTheme(
    titleTextStyle: PlantAppTypographyTokens.data.bodyLarge?.copyWith(
      color: ColorTokens.grayScale700,
      fontWeight: FontWeightTokens.bold,
    ),
    backgroundColor: ColorTokens.grayScale100,
    iconTheme: const IconThemeData(
      color: ColorTokens.grayScale500,
    ),
    centerTitle: true,
    elevation: 0,
  );
}
