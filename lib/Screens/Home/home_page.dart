import 'package:flutter/material.dart';
import 'package:mr_corporate/Screens/Home/advertisement.dart';
import 'package:mr_corporate/Screens/Home/components/menu_state.dart';
import 'package:mr_corporate/Screens/Home/components/todays_special.dart';
import 'package:mr_corporate/Screens/Home/header.dart';
import 'package:mr_corporate/Screens/Home/previous_order.dart';
import 'package:mr_corporate/Screens/Home/qr_scanner_dropdown.dart';

class HomeScreenPageState extends StatefulWidget {
  const HomeScreenPageState({Key? key}) : super(key: key);

  @override
  State<HomeScreenPageState> createState() => _HomeScreenPageStateState();
}

class _HomeScreenPageStateState extends State<HomeScreenPageState> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(0),
          child: SingleChildScrollView(
            //physics: NeverScrollableScrollPhysics(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                HomeHeader(),
                QRdropDownBar(),
                AdvertiseState(),
                Padding(
                  padding: const EdgeInsets.only(left: 24, right: 24),
                  child: Text(
                    "What are you looking for?",
                    textAlign: TextAlign.start,
                    style: TextStyle(fontSize: 26, fontWeight: FontWeight.w600),
                  ),
                ),
                MenuCardsState(),
                Padding(
                  padding: const EdgeInsets.only(left: 24, right: 24),
                  child: Text(
                    "Today's Special",
                    textAlign: TextAlign.start,
                    style: TextStyle(fontSize: 26, fontWeight: FontWeight.w600),
                  ),
                ),
                TodaysSpecialState(),
                YourPreviousOrderState()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
