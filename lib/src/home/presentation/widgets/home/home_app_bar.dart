import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:plant_app_hey_flutter_challenge/src/shared/design_system/assets/plant_app_images.dart';
import 'package:plant_app_hey_flutter_challenge/src/shared/design_system/tokens/spacing_tokens.dart';
import 'package:plant_app_hey_flutter_challenge/src/shared/utils/extensions/build_context_extensions.dart';

class HomeAppBar extends ConsumerWidget implements PreferredSizeWidget {
  const HomeAppBar({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return AppBar(
      title: Text(
        'search products',
        style: context.textTheme.bodyLarge,
      ),
      actions: [
        CircleAvatar(
          child: Image.asset(PlantAppImages.profileMan1),
        ),
        SpacingTokens.h16,
      ],
    );
  }
}
