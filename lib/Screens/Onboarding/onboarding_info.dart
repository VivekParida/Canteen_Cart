import 'package:flutter/material.dart';
import 'package:mr_corporate/Screens/Onboarding/sliderModal.dart';
import 'package:mr_corporate/Screens/Onboarding/onboardingPages.dart';
import 'package:mr_corporate/Screens/Onboarding/dot_indicator.dart';

class OnboardingContent extends StatelessWidget {
  const OnboardingContent(
      {Key? key,
      required this.image,
      required this.title,
      required this.description})
      : super(key: key);

  final String image, title, description;

  Object? get _pageIndex => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        //const Spacer(),
        Image.asset(
          image,
          height: 500,
        ),
        Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          ...List.generate(
              slides.length,
              (index) => Padding(
                    padding: const EdgeInsets.only(right: 6),
                    child: DotIndicator(
                      isActive: index == _pageIndex,
                    ),
                  )),
        ]),
        const Spacer(),
        Text(
          title,
          textAlign: TextAlign.center,
          style: TextStyle(
              color: Colors.black87, fontWeight: FontWeight.w500, fontSize: 26),
        ),
        Text(
          description,
          textAlign: TextAlign.center,
          style: TextStyle(
              color: Color.fromARGB(221, 126, 126, 126),
              fontWeight: FontWeight.w500,
              fontSize: 14),
        ),
        const Spacer(),
      ]),
    );
  }
}
