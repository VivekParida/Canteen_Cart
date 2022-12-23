import 'package:flutter/material.dart';
import 'package:mr_corporate/Screens/Home/home_page.dart';
import 'package:mr_corporate/Screens/nav_bar.dart';

class CongratulationsState extends StatelessWidget {
  const CongratulationsState({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(40.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Spacer(),
            Image.asset("assets/congratulations.png"),
            Spacer(),
            Text(
              "Congratulations!",
              style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 14,
            ),
            Text(
              "You have successfully signed up to MR Canteen app",
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                  color: Color.fromRGBO(62, 62, 62, 1)),
            ),
            Spacer(),
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
                      'Complete your Profile',
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
            SizedBox(
              height: 24,
            ),
            SizedBox(
                width: 333.0,
                height: 53.0,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => NavBarState(),
                        ));
                  },
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(
                          Color.fromRGBO(238, 118, 35, 1)),
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8)))),
                  child: Center(
                    child: Text(
                      'Go to home Page',
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
          ],
        ),
      ),
    );
  }
}
