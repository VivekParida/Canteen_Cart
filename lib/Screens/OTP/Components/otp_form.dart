import 'package:flutter/material.dart';

class OtpForm extends StatefulWidget {
  const OtpForm({Key? key}) : super(key: key);

  @override
  State<OtpForm> createState() => _OtpFormState();
}

class _OtpFormState extends State<OtpForm> {
  FocusNode? pin2FocusNode;
  FocusNode? pin3FocusNode;
  FocusNode? pin4FocusNode;
  FocusNode? pin5FocusNode;
  FocusNode? pin6FocusNode;

  @override
  void initState() {
    super.initState();
    pin2FocusNode = FocusNode();
    pin3FocusNode = FocusNode();
    pin4FocusNode = FocusNode();
    pin5FocusNode = FocusNode();
    pin6FocusNode = FocusNode();
  }

  @override
  void dispose() {
    super.dispose();
    pin2FocusNode!.dispose();
    pin3FocusNode!.dispose();
    pin4FocusNode!.dispose();
    pin5FocusNode!.dispose();
    pin6FocusNode!.dispose();
  }

  void nextField(String value, FocusNode? focusNode) {
    if (value.length == 1) {
      focusNode!.requestFocus();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          SizedBox(height: 48),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: 40,
                height: 68,
                child: TextFormField(
                  decoration: InputDecoration(
                    fillColor: Color.fromRGBO(238, 118, 35, 1),
                    enabledBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Color.fromRGBO(238, 118, 35, 1))),
                    border: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Color.fromRGBO(238, 118, 35, 1))),
                    hintText: 'Enter your phone number',
                    hintStyle: TextStyle(
                      color: Color.fromRGBO(209, 209, 209, 1),
                      fontFamily: 'Gilroy',
                      fontSize: 16.0,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                  autofocus: true,
                  style: TextStyle(fontSize: 24),
                  keyboardType: TextInputType.number,
                  textAlign: TextAlign.center,
                  onChanged: (value) {
                    nextField(value, pin2FocusNode);
                  },
                ),
              ),
              SizedBox(
                width: 40,
                height: 68,
                child: TextFormField(
                  decoration: InputDecoration(
                    fillColor: Color.fromRGBO(238, 118, 35, 1),
                    enabledBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Color.fromRGBO(238, 118, 35, 1))),
                    border: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Color.fromRGBO(238, 118, 35, 1))),
                    hintText: 'Enter your phone number',
                    hintStyle: TextStyle(
                      color: Color.fromRGBO(209, 209, 209, 1),
                      fontFamily: 'Gilroy',
                      fontSize: 16.0,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                  focusNode: pin2FocusNode,
                  style: TextStyle(fontSize: 24),
                  keyboardType: TextInputType.number,
                  textAlign: TextAlign.center,
                  //decoration: otpInputDecoration,
                  onChanged: (value) => nextField(value, pin3FocusNode),
                ),
              ),
              SizedBox(
                width: 40,
                height: 68,
                child: TextFormField(
                  decoration: InputDecoration(
                    fillColor: Color.fromRGBO(238, 118, 35, 1),
                    enabledBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Color.fromRGBO(238, 118, 35, 1))),
                    border: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Color.fromRGBO(238, 118, 35, 1))),
                    hintText: 'Enter your phone number',
                    hintStyle: TextStyle(
                      color: Color.fromRGBO(209, 209, 209, 1),
                      fontFamily: 'Gilroy',
                      fontSize: 16.0,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                  focusNode: pin3FocusNode,
                  style: TextStyle(fontSize: 24),
                  keyboardType: TextInputType.number,
                  textAlign: TextAlign.center,
                  //decoration: inpo(),
                  onChanged: (value) => nextField(value, pin4FocusNode),
                ),
              ),
              SizedBox(
                width: 40,
                height: 68,
                child: TextFormField(
                  decoration: InputDecoration(
                    fillColor: Color.fromRGBO(238, 118, 35, 1),
                    enabledBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Color.fromRGBO(238, 118, 35, 1))),
                    border: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Color.fromRGBO(238, 118, 35, 1))),
                    hintText: 'Enter your phone number',
                    hintStyle: TextStyle(
                      color: Color.fromRGBO(209, 209, 209, 1),
                      fontFamily: 'Gilroy',
                      fontSize: 16.0,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                  focusNode: pin4FocusNode,
                  style: TextStyle(fontSize: 24),
                  keyboardType: TextInputType.number,
                  textAlign: TextAlign.center,
                  onChanged: (value) => nextField(value, pin5FocusNode),
                ),
              ),
              SizedBox(
                width: 40,
                height: 68,
                child: TextFormField(
                  decoration: InputDecoration(
                    fillColor: Color.fromRGBO(238, 118, 35, 1),
                    enabledBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Color.fromRGBO(238, 118, 35, 1))),
                    border: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Color.fromRGBO(238, 118, 35, 1))),
                    hintText: 'Enter your phone number',
                    hintStyle: TextStyle(
                      color: Color.fromRGBO(209, 209, 209, 1),
                      fontFamily: 'Gilroy',
                      fontSize: 16.0,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                  focusNode: pin5FocusNode,
                  style: TextStyle(fontSize: 24),
                  keyboardType: TextInputType.number,
                  textAlign: TextAlign.center,
                  onChanged: (value) => nextField(value, pin6FocusNode),
                ),
              ),
              SizedBox(
                width: 40,
                height: 68,
                child: TextFormField(
                  decoration: InputDecoration(
                    fillColor: Color.fromRGBO(238, 118, 35, 1),
                    enabledBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Color.fromRGBO(238, 118, 35, 1))),
                    border: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Color.fromRGBO(238, 118, 35, 1))),
                    hintText: 'Enter your phone number',
                    hintStyle: TextStyle(
                      color: Color.fromRGBO(209, 209, 209, 1),
                      fontFamily: 'Gilroy',
                      fontSize: 16.0,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                  focusNode: pin6FocusNode,
                  style: TextStyle(fontSize: 24),
                  keyboardType: TextInputType.number,
                  textAlign: TextAlign.center,
                  onChanged: (value) {
                    if (value.length == 1) {
                      pin6FocusNode!.unfocus();
                      // Then you need to check is the code is correct or not
                    }
                  },
                ),
              ),
            ],
          ),
          SizedBox(height: 24),
          // DefaultButton(
          //   text: "Continue",
          //   press: () {},
          // )
        ],
      ),
    );
  }
}
