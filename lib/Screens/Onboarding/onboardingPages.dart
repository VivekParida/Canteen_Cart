import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:mr_corporate/Screens/Onboarding/sliderModal.dart';
import 'package:mr_corporate/Screens/Onboarding/onboarding_info.dart';

class onBoardingScreenState extends StatefulWidget {
  final VoidCallback onSkip;
  const onBoardingScreenState({Key? key, required this.onSkip})
      : super(key: key);

  @override
  State<onBoardingScreenState> createState() => _onBoardingScreenStateState();
}

class _onBoardingScreenStateState extends State<onBoardingScreenState> {
  late PageController _pageController;

  int _pageIndex = 0;

  @override
  void initState() {
    _pageController = PageController(initialPage: 0);
    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.only(
          left: 48,
          bottom: 48,
        ),
        child: Column(
          children: [
            Expanded(
              child: PageView.builder(
                itemCount: slides.length,
                controller: _pageController,
                onPageChanged: (index) {
                  setState(() {
                    _pageIndex = index;
                  });
                },
                itemBuilder: (context, index) => OnboardingContent(
                    image: slides[index].image,
                    title: slides[index].title,
                    description: slides[index].description),
              ),
            ),
            SizedBox(
              height: 53,
              width: 333,
              child: ElevatedButton(
                onPressed: () {
                  _pageController.nextPage(
                      duration: Duration(microseconds: 300),
                      curve: Curves.ease);
                },
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(
                        Color.fromRGBO(238, 118, 35, 1)),
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8)))),
                child: Text(
                  "Next",
                  style: TextStyle(fontSize: 18),
                ),
              ),
            )
          ],
        ),
      )),
    );
  }
}
