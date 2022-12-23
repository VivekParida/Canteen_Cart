import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mr_corporate/Screens/Cart/provider_list.dart';
import 'package:mr_corporate/Screens/Home/home_page.dart';
import 'package:mr_corporate/Screens/Menu/menu_page.dart';
import 'package:mr_corporate/Screens/nav_bar.dart';
import 'package:mr_corporate/Screens/onboarding_page.dart';
//import 'package:mr_corporate/Screens/Onboarding/onboardingPages.dart';
import 'package:mr_corporate/Screens/sign_up.dart';
import 'package:mr_corporate/Screens/splash_screen.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:mr_corporate/Screens/terms_and_conditions.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

int? initScreen;
Future<void> main() async {
  // SystemChrome.setSystemUIOverlayStyle(
  //     SystemUiOverlayStyle(statusBarColor: Colors.transparent));
  WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences preferences = await SharedPreferences.getInstance();
  initScreen = await preferences.getInt('initScreen');
  await preferences.setInt('initScreen', 1); //if already shown -> 1 else 0
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => CartProvider(),
      child: Builder(builder: (BuildContext context) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Flutter Demo',
          theme: ThemeData(
            fontFamily: 'Century Gothic',
            primarySwatch: Colors.blue,
          ),
          home: splashScreen(),
          // initialRoute: initScreen == 0 || initScreen == null
          //     ? 'onboard' 't&c' 'signup'
          //     : 'home',
          // routes: {
          //   't&c': (context) => TermsAndConditionsState(),
          //   'signup': (context) => SignUpState(),
          //   'home': (context) => HomeScreenPageState(),
          //   'onboard': (context) => onBoardingScreenState(),
          // },
        );
      }),
    );
  }
}
