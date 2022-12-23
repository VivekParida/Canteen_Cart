import 'package:flutter/material.dart';
import 'package:mr_corporate/Screens/sign_up.dart';

class onboardingPageState extends StatefulWidget {
  const onboardingPageState({Key? key}) : super(key: key);

  @override
  State<onboardingPageState> createState() => _onboardingPageStateState();
}

class _onboardingPageStateState extends State<onboardingPageState> {
  bool agree = false;
  void _changeState() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => SignUpState()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(right: 24, left: 24, bottom: 48),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Spacer(),
            Image.asset("assets/onboarding.png"),
            Spacer(),
            Padding(
              padding: const EdgeInsets.only(right: 32, left: 32),
              child: Text(
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Id tellus purus libero pharetra venenatis.",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            Spacer(),
            Row(
              children: [
                Checkbox(
                  value: agree,
                  onChanged: (value) {
                    setState(() {
                      agree = value ?? false;
                    });
                  },
                ),
                Expanded(
                  child: const Text(
                    'I hereby accept the terms and conditions of the application and agree to continue.',
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                  ),
                )
              ],
            ),
            SizedBox(
              height: 24,
            ),
            SizedBox(
              height: 53,
              width: 333,
              child: ElevatedButton(
                onPressed: () {
                  agree ? _changeState() : null;
                  // Navigator.push(context,
                  //     MaterialPageRoute(builder: (context) => SignUpState()));
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor:
                      agree ? Color.fromRGBO(238, 118, 35, 1) : Colors.grey,
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(8))),
                ),
                child: Text(
                  "Continue",
                  style: TextStyle(fontSize: 18),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
