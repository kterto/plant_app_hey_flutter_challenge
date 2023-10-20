import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:plant_app_hey_flutter_challenge/src/home/domain/home/home_usecase.dart';
import 'package:plant_app_hey_flutter_challenge/src/home/home_providers.dart';
import 'package:plant_app_hey_flutter_challenge/src/shared/design_system/tokens/color_tokens.dart';
import 'package:plant_app_hey_flutter_challenge/src/shared/design_system/tokens/typography_tokens.dart';
import 'package:plant_app_hey_flutter_challenge/src/shared/utils/extensions/build_context_extensions.dart';

class IntroAppBar extends ConsumerWidget implements PreferredSizeWidget {
  const IntroAppBar({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return AppBar(
      actions: [
        TextButton(
          onPressed: () => ref
              .read(HomeProviders.homeUsecaseProvider)
              .add(const SkipIntroPressed()),
          child: Text(
            'Skip',
            style: context.textTheme.labelLarge?.copyWith(
              color: ColorTokens.grayScale700,
              fontWeight: FontWeightTokens.light,
            ),
          ),
        ),
      ],
    );
  }
}
