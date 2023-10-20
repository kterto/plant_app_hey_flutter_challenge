import 'package:flutter/material.dart';
import 'package:plant_app_hey_flutter_challenge/src/shared/design_system/themes/plant_app_app_bar_theme.dart';
import 'package:plant_app_hey_flutter_challenge/src/shared/design_system/themes/plant_app_bottom_navigation_theme.dart';
import 'package:plant_app_hey_flutter_challenge/src/shared/design_system/themes/plant_app_input_decoration_theme.dart';
import 'package:plant_app_hey_flutter_challenge/src/shared/design_system/tokens/color_tokens.dart';
import 'package:plant_app_hey_flutter_challenge/src/shared/design_system/tokens/generate_material_color.dart';
import 'package:plant_app_hey_flutter_challenge/src/shared/design_system/tokens/typography_tokens.dart';

class PlantAppTheme {
  static final ThemeData data = ThemeData(
    primarySwatch: generateMaterialColor(ColorTokens.primaryMain),
    scaffoldBackgroundColor: ColorTokens.grayScale100,
    colorScheme: ColorTokens.scheme,
    textTheme: PlantAppTypographyTokens.data,
    appBarTheme: PlantAppAppBarTheme.data,
    bottomNavigationBarTheme: PlantAppBottomNavigationBarTheme.data,
    inputDecorationTheme: PlantAppInputDecorationTheme.data,
  );
}
