import 'package:flutter/material.dart';
import 'package:mr_corporate/Screens/Menu/food_type.dart';
import 'package:mr_corporate/Screens/Menu/header_menu_page.dart';
import 'package:mr_corporate/Screens/Menu/search.dart';

class MenuPagestate extends StatefulWidget {
  const MenuPagestate({Key? key}) : super(key: key);

  @override
  State<MenuPagestate> createState() => _MenuPagestateState();
}

class _MenuPagestateState extends State<MenuPagestate> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.only(left: 24, top: 48, bottom: 24, right: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              HeaderState(),
              SearchState(),
              SizedBox(height: 24),
              FoodTypeState(),
            ],
          ),
        ),
      ),
    );
  }
}
