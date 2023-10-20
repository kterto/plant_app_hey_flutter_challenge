import 'package:flutter/material.dart';
import 'package:plant_app_hey_flutter_challenge/src/shared/design_system/tokens/color_tokens.dart';

class PlantAppBottomNavigationBarTheme {
  static const BottomNavigationBarThemeData data = BottomNavigationBarThemeData(
    backgroundColor: ColorTokens.grayScale700,
    elevation: 2,
    selectedIconTheme: IconThemeData(
      color: Colors.white,
    ),
    unselectedIconTheme: IconThemeData(
      color: Colors.white,
    ),
    type: BottomNavigationBarType.fixed,
  );
}
