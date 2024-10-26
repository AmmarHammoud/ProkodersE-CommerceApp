import 'package:flutter/material.dart';

class OnboardingFooter extends StatelessWidget {
  const OnboardingFooter({
    super.key,
    required this.onboardingFooterCircles,
  });

  final List<Widget> onboardingFooterCircles;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: onboardingFooterCircles,
    );
  }
}
