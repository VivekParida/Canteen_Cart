import 'package:flutter/material.dart';
import 'package:mr_corporate/Screens/OTP/Components/body.dart';

class OTPstate extends StatefulWidget {
  const OTPstate({Key? key}) : super(key: key);

  @override
  State<OTPstate> createState() => _OTPstateState();
}

class _OTPstateState extends State<OTPstate> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Body());
  }
}
