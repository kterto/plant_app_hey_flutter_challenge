import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:plant_app_hey_flutter_challenge/src/plant_app.dart';

void main() {
  runApp(const ProviderScope(child: PlantApp()));
}
