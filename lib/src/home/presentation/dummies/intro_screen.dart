import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:plant_app_hey_flutter_challenge/src/home/domain/home/home_usecase.dart';
import 'package:plant_app_hey_flutter_challenge/src/home/home_providers.dart';
import 'package:plant_app_hey_flutter_challenge/src/home/presentation/widgets/intro/intro_app_bar.dart';
import 'package:plant_app_hey_flutter_challenge/src/home/presentation/widgets/intro/page_view_stepper.dart';
import 'package:plant_app_hey_flutter_challenge/src/shared/design_system/assets/plant_app_images.dart';
import 'package:plant_app_hey_flutter_challenge/src/shared/design_system/tokens/color_tokens.dart';
import 'package:plant_app_hey_flutter_challenge/src/shared/design_system/tokens/spacing_tokens.dart';
import 'package:plant_app_hey_flutter_challenge/src/shared/design_system/tokens/typography_tokens.dart';
import 'package:plant_app_hey_flutter_challenge/src/shared/utils/extensions/build_context_extensions.dart';

class IntroScreen extends HookConsumerWidget {
  const IntroScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var currentPage = useState(0);

    return Scaffold(
      appBar: const IntroAppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: SpacingTokens.s16,
        ),
        child: Column(
          children: [
            Expanded(
              child: PageView(
                onPageChanged: (value) => currentPage.value = value,
                children: [
                  Image.asset(PlantAppImages.introOne),
                  Image.asset(PlantAppImages.introTwo),
                  Image.asset(PlantAppImages.introThree),
                ],
              ),
            ),
            SpacingTokens.v16,
            Expanded(
              child: Column(
                children: [
                  PageViewStepper(length: 3, selected: currentPage.value),
                  SpacingTokens.v32,
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: SpacingTokens.s32,
                    ),
                    child: Text.rich(
                      TextSpan(children: [
                        TextSpan(
                          text: 'Enjoy your life with ',
                          style: context.textTheme.headlineLarge?.copyWith(
                            color: ColorTokens.grayScale700,
                            fontWeight: FontWeightTokens.light,
                          ),
                        ),
                        TextSpan(
                          text: 'plants',
                          style: context.textTheme.headlineLarge?.copyWith(
                            color: ColorTokens.grayScale700,
                            fontWeight: FontWeightTokens.regular,
                          ),
                        ),
                      ]),
                    ),
                  ),
                  const Spacer(),
                  CircleAvatar(
                    backgroundColor: ColorTokens.primaryMain,
                    radius: SpacingTokens.s40,
                    child: IconButton(
                      onPressed: () => ref
                          .read(HomeProviders.homeUsecaseProvider)
                          .add(const SkipIntroPressed()),
                      icon: const Icon(
                        Icons.arrow_forward,
                        color: ColorTokens.grayScale100,
                      ),
                      iconSize: SpacingTokens.s40,
                    ),
                  ),
                  const Spacer(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
