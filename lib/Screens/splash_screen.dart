import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:mr_corporate/Screens/Onboarding/onboardingPages.dart';
import 'package:page_transition/page_transition.dart';

class splashScreen extends StatefulWidget {
  const splashScreen({Key? key}) : super(key: key);

  @override
  State<splashScreen> createState() => _splashScreenState();
}

class _splashScreenState extends State<splashScreen> {
  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
        duration: 1000,
        pageTransitionType: PageTransitionType.leftToRightWithFade,
        splash: Column(
          children: [
            Image.asset('assets/Logo.png'),
          ],
        ),
        splashIconSize: 250,
        backgroundColor: Color.fromRGBO(245, 245, 245, 1),
        nextScreen: onBoardingScreenState(
          onSkip: () {},
        ));
  }
}
