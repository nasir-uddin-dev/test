import 'package:flutter/material.dart';
import 'package:test/onboarding_screen/page_1.dart';
import 'package:test/onboarding_screen/page_2.dart';
import 'package:test/onboarding_screen/page_3.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  //to handle page that is used controller
  final PageController _controller = PageController(initialPage: 0);

  //developing app performance, we have to dispose controller
  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _controller,
        children: [Page1(), Page2(), Page3()],
      ),
    );
  }
}
