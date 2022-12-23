import 'dart:ui';

import 'package:flutter/material.dart';

class MenuCardsState extends StatefulWidget {
  const MenuCardsState({Key? key}) : super(key: key);

  @override
  State<MenuCardsState> createState() => _MenuCardsStateState();
}

class _MenuCardsStateState extends State<MenuCardsState> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 24),
      height: 124,
      //width: 363,
      //color: Colors.blueGrey,
      child: Row(
        // pad
        children: [
          // Container(
          //   height: 88,
          //   width: 88,
          //   decoration: BoxDecoration(
          //       color: Color.fromRGBO(250, 231, 248, 1),
          //       borderRadius: BorderRadius.circular(8)),
          //   child: Text(
          //     "Snacks",
          //     style: TextStyle(
          //         fontSize: 16,
          //         fontWeight: FontWeight.w600,
          //         color: Color.fromRGBO(200, 55, 190, 1)),
          //   ),
          // ),
          SizedBox(
            width: 8,
          ),
          InkWell(
            onTap: () {},
            child: Container(
              height: 88,
              width: 88,
              decoration: BoxDecoration(
                  color: Color.fromRGBO(251, 242, 225, 1),
                  borderRadius: BorderRadius.circular(8)),
              child: Column(
                children: [
                  // Icon(
                  //   Icons.abc_sharp,
                  //   size: 48,
                  // ),
                  Image.asset(
                    "assets/home/lunch.png",
                    height: 56,
                    width: 60,
                  ),
                  Text(
                    "Lunch",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: Color.fromRGBO(255, 168, 0, 1)),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            width: 8,
          ),
          InkWell(
            onTap: () {},
            child: Container(
              height: 88,
              width: 88,
              decoration: BoxDecoration(
                  color: Color.fromRGBO(236, 246, 229, 1),
                  borderRadius: BorderRadius.circular(8)),
              child: Column(
                children: [
                  Image.asset(
                    "assets/home/breakfast.png",
                    height: 56,
                    width: 60,
                  ),
                  Text(
                    "Breakfast",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: Color.fromRGBO(72, 169, 12, 1)),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            width: 8,
          ),
          InkWell(
            onTap: () {},
            child: Container(
              height: 88,
              width: 88,
              decoration: BoxDecoration(
                  color: Color.fromRGBO(255, 233, 233, 1),
                  borderRadius: BorderRadius.circular(8)),
              child: Column(
                children: [
                  Image.asset(
                    "assets/home/dinner.png",
                    height: 56,
                    width: 60,
                  ),
                  Text(
                    "Dinner",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: Color.fromRGBO(201, 26, 26, 1)),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            width: 8,
          ),
        ],
      ),
    );
  }
}
