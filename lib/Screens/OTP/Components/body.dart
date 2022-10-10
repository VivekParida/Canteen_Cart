import 'package:flutter/material.dart';
import 'package:mr_corporate/Screens/OTP/Components/otp_form.dart';
import 'package:mr_corporate/Screens/congratulations.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: EdgeInsets.all(48),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 200),
              Text(
                "OTP Verification",
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 24,
              ),
              Text("We sent your code to +91 76******65"),
              buildTimer(),
              OtpForm(),
              SizedBox(height: 8),
              GestureDetector(
                onTap: () {
                  // OTP code resend
                },
                child: Text(
                  "Resend OTP Code",
                  style: TextStyle(decoration: TextDecoration.underline),
                ),
              ),
              SizedBox(
                height: 300,
              ),
              SizedBox(
                height: 53,
                width: 333,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => CongratulationsState()));
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Color.fromRGBO(238, 118, 35, 1),
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(8))),
                  ),
                  child: Text(
                    "Verify",
                    style: TextStyle(fontSize: 18),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Row buildTimer() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("This code will expired in "),
        TweenAnimationBuilder(
          tween: Tween(begin: 30.0, end: 0.0),
          duration: Duration(seconds: 30),
          builder: (_, dynamic value, child) => Text(
            "00:${value.toInt()}",
            style: TextStyle(color: Color.fromRGBO(238, 118, 35, 1)),
          ),
        ),
      ],
    );
  }
}
