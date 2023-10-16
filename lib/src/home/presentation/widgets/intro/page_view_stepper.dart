import 'package:flutter/material.dart';
import 'package:plant_app_hey_flutter_challenge/src/shared/design_system/tokens/color_tokens.dart';
import 'package:plant_app_hey_flutter_challenge/src/shared/design_system/tokens/spacing_tokens.dart';

class PageViewStepper extends StatefulWidget {
  const PageViewStepper({
    super.key,
    required this.length,
    required this.selected,
  });

  final int length;
  final int selected;

  @override
  State<PageViewStepper> createState() => _PageViewStepperState();
}

class _PageViewStepperState extends State<PageViewStepper>
    with TickerProviderStateMixin {
  late List<AnimationController> _controllers;
  late int selected;

  @override
  void initState() {
    super.initState();
    selected = widget.selected;

    _controllers = List.generate(
      widget.length,
      (index) => index == widget.selected
          ? AnimationController(
              vsync: this,
              value: 1.0,
              duration: const Duration(milliseconds: 200),
            )
          : AnimationController(
              vsync: this,
              duration: const Duration(milliseconds: 200),
            ),
    );
  }

  @override
  void didUpdateWidget(covariant PageViewStepper oldWidget) {
    super.didUpdateWidget(oldWidget);

    if (widget.selected != selected) {
      _controllers[selected].reverse();
      _controllers[widget.selected].forward();
      selected = widget.selected;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(
        widget.length,
        (index) => Padding(
          padding: const EdgeInsets.symmetric(horizontal: SpacingTokens.s4),
          child: _SelectedIndicator(
            key: ValueKey('intro$index'),
            controller: _controllers[index],
          ),
        ),
      ),
    );
  }
}

class _SelectedIndicator extends StatelessWidget {
  _SelectedIndicator({super.key, required this.controller})
      : width = Tween<double>(
          begin: SpacingTokens.s8,
          end: SpacingTokens.s24,
        ).animate(
          CurvedAnimation(
            parent: controller,
            curve: Curves.ease,
          ),
        ),
        color = ColorTween(
          begin: ColorTokens.grayScale500,
          end: ColorTokens.primaryMain,
        ).animate(
          CurvedAnimation(
            parent: controller,
            curve: Curves.ease,
          ),
        );

  final Animation<double> controller;
  final Animation<double> width;
  final Animation<Color?> color;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(animation: controller, builder: _buildAnimation);
  }

  Widget _buildAnimation(BuildContext context, Widget? child) {
    return Container(
      height: SpacingTokens.s8,
      width: width.value,
      decoration: BoxDecoration(
        color: color.value,
        borderRadius: BorderRadius.circular(SpacingTokens.s8),
      ),
    );
  }
}
