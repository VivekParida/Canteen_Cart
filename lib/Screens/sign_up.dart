import 'package:flutter/material.dart';
import 'package:mr_corporate/Screens/OTP/otp_screen.dart';

class SignUpState extends StatefulWidget {
  const SignUpState({Key? key}) : super(key: key);

  @override
  State<SignUpState> createState() => _SignUpStateState();
}

class _SignUpStateState extends State<SignUpState> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.only(left: 48, right: 48, bottom: 48),
          child: Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Spacer(),
                Image.asset(
                  "assets/SignupLogo.png",
                  alignment: Alignment.center,
                ),
                Spacer(),
                Image.asset("assets/SignupVector.png"),
                Spacer(),
                Text(
                  'Sign Up',
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    color: Color.fromRGBO(46, 45, 54, 1),
                    fontFamily: 'Gilroy',
                    fontSize: 40.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 40.0),
                Column(crossAxisAlignment: CrossAxisAlignment.start,
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      Text(
                        'Phone Number',
                        style: TextStyle(
                          color: Color.fromRGBO(177, 177, 177, 1),
                          fontFamily: 'Gilroy',
                          fontSize: 16.0,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                      SizedBox(height: 8.0),
                      SizedBox(
                        height: 80,
                        width: 333,
                        child: TextField(
                          // style: TextStyle(color: Color.fromRGBO(209, 209, 209, 1)),
                          keyboardType: TextInputType.number,
                          maxLength: 10,
                          decoration: InputDecoration(
                            fillColor: Color.fromRGBO(238, 118, 35, 1),
                            enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Color.fromRGBO(238, 118, 35, 1))),
                            border: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Color.fromRGBO(238, 118, 35, 1))),
                            hintText: 'Enter your phone number',
                            hintStyle: TextStyle(
                              color: Color.fromRGBO(209, 209, 209, 1),
                              fontFamily: 'Gilroy',
                              fontSize: 16.0,
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 0.0,
                      ),
                      SizedBox(
                          width: 333.0,
                          height: 53.0,
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => OTPstate(),
                                  ));
                            },
                            style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.all(
                                    Color.fromRGBO(238, 118, 35, 1)),
                                shape: MaterialStateProperty.all(
                                    RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(8)))),
                            child: Center(
                              child: Text(
                                'Get OTP',
                                style: TextStyle(
                                  fontFamily: 'Gilroy',
                                  fontSize: 18,
                                  color: Colors.white,
                                  height: 1,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          )),
                    ]),
                SizedBox(
                  height: 16,
                ),
                Center(
                  child: Text(
                    'or',
                    style: TextStyle(
                        fontFamily: 'Gilroy',
                        fontSize: 16,
                        color: Color.fromRGBO(105, 109, 198, 1),
                        height: 1,
                        fontWeight: FontWeight.w600),
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                SizedBox(
                    width: 333.0,
                    height: 53.0,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        primary: Color.fromARGB(255, 255, 255, 255),
                        elevation: 0,
                        side: BorderSide(
                            color: Color.fromRGBO(238, 118, 35, 1), width: 1),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(8)),
                        ),
                      ),
                      child: Center(
                        child: Text(
                          'Join as Guest',
                          style: TextStyle(
                            fontFamily: 'Gilroy',
                            fontSize: 18,
                            color: Color.fromRGBO(238, 118, 35, 1),
                            height: 1,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    )),
                // const Spacer(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
