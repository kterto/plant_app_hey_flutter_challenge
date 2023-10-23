import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:plant_app_hey_flutter_challenge/src/home/presentation/widgets/home/home_app_bar.dart';
import 'package:plant_app_hey_flutter_challenge/src/shared/design_system/assets/plant_app_icons.dart';
import 'package:plant_app_hey_flutter_challenge/src/shared/design_system/assets/plant_app_images.dart';
import 'package:plant_app_hey_flutter_challenge/src/shared/design_system/tokens/spacing_tokens.dart';
import 'package:plant_app_hey_flutter_challenge/src/shared/utils/extensions/build_context_extensions.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: const HomeAppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: SpacingTokens.s16),
        child: Column(
          children: [
            SpacingTokens.v16,
            Row(
              children: [
                Flexible(
                  child: TextField(
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.search),
                      hintText: 'Search a plant',
                    ),
                  ),
                ),
                SpacingTokens.h8,
                ElevatedButton(
                  onPressed: () => print('oi'),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Icon(PlantAppIcons.equalizer_line),
                  ),
                ),
              ],
            ),
            SpacingTokens.v16,
          ],
        ),
      ),
    );
  }
}
