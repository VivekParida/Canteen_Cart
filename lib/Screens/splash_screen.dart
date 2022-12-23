import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
//import 'package:mr_corporate/Screens/Onboarding/onboardingPages.dart';
import 'package:mr_corporate/Screens/onboarding_page.dart';
import 'package:page_transition/page_transition.dart';

class splashScreen extends StatefulWidget {
  const splashScreen({Key? key}) : super(key: key);

  @override
  State<splashScreen> createState() => _splashScreenState();
}

class _splashScreenState extends State<splashScreen> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        constraints: BoxConstraints.expand(),
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/splash_background.png"),
                fit: BoxFit.cover)),
        child: AnimatedSplashScreen(
            duration: 1000,
            pageTransitionType: PageTransitionType.leftToRightWithFade,
            splash: Column(
              children: [
                SizedBox(
                  height: 40,
                ),
                Image.asset('assets/Logo.png'),
              ],
            ),
            splashIconSize: 260,
            backgroundColor: Colors.transparent,
            // backgroundColor: Color.fromRGBO(245, 245, 245, 1),
            nextScreen: onboardingPageState()),
      ),
    );
  }
}
