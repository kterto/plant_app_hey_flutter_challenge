import 'package:flutter/material.dart';
import 'package:plant_app_hey_flutter_challenge/src/shared/design_system/tokens/color_tokens.dart';
import 'package:plant_app_hey_flutter_challenge/src/shared/design_system/tokens/spacing_tokens.dart';

class PlantAppInputDecorationTheme {
  static final InputDecorationTheme data = InputDecorationTheme(
    border: MaterialStateOutlineInputBorder.resolveWith(
      (states) {
        const OutlineInputBorder baseInputBorder = OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.all(
            Radius.circular(SpacingTokens.s8),
          ),
        );

        if (states.contains(MaterialState.error)) {
          return baseInputBorder.copyWith(
            borderSide: const BorderSide(
              color: ColorTokens.supportDangerMain,
              width: 0.5,
            ),
          );
        } else {
          if (states.contains(MaterialState.focused)) {
            return baseInputBorder.copyWith(
              borderSide: const BorderSide(
                color: ColorTokens.primaryMain,
                width: 0.5,
              ),
            );
          } else {
            return baseInputBorder;
          }
        }
      },
    ),
    contentPadding: const EdgeInsets.symmetric(horizontal: SpacingTokens.s8),
    fillColor: Colors.white,
    filled: true,
  );
}
