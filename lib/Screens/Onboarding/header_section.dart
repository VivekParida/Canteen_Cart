import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:mr_corporate/Screens/terms_and_conditions.dart';
import 'package:mr_corporate/Screens/Onboarding/dot_indicator.dart';
import 'package:mr_corporate/Screens/Onboarding/onboardingPages.dart';
import 'package:mr_corporate/Screens/Onboarding/onboarding_info.dart';

class HeaderSection extends StatelessWidget {
  final VoidCallback onSkip;
  const HeaderSection({Key? key, required this.onSkip}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 48, right: 48),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          TextButton(
            onPressed: () {
              Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                      builder: (context) => TermsAndConditionsState()));
            },
            child: Text(
              "Skip",
              style: TextStyle(
                  fontSize: 18,
                  color:
                      //_pageIndex % 2 == 0 ? Color.fromRGBO(238, 118, 35, 1) : Colors.white,
                      Color.fromRGBO(238, 118, 35, 1)),
            ),
          )
        ],
      ),
    );
  }
}
