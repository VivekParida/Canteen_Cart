import 'package:flutter/material.dart';

class MealSelectionPageState extends StatefulWidget {
  const MealSelectionPageState({Key? key}) : super(key: key);

  @override
  State<MealSelectionPageState> createState() => _MealSelectionPageStateState();
}

class _MealSelectionPageStateState extends State<MealSelectionPageState> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 24),
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.only(right: 24, left: 24),
            height: 64,
            width: 360,
            color: Color.fromRGBO(236, 246, 229, 1),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Breakfast",
                  style: TextStyle(
                      fontSize: 16,
                      color: Color.fromRGBO(72, 169, 12, 1),
                      fontWeight: FontWeight.w700),
                ),
                Image.asset("assets/home/breakfast.png")
              ],
            ),
          ),
          SizedBox(
            height: 24,
          ),
          Container(
            padding: EdgeInsets.only(right: 24, left: 24),
            height: 64,
            width: 360,
            color: Color.fromRGBO(251, 242, 225, 1),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Lunch",
                    style: TextStyle(
                        fontSize: 16,
                        color: Color.fromRGBO(255, 168, 0, 1),
                        fontWeight: FontWeight.w700)),
                Image.asset("assets/home/lunch.png")
              ],
            ),
          ),
          SizedBox(
            height: 24,
          ),
          Container(
            padding: EdgeInsets.only(right: 24, left: 24),
            height: 64,
            width: 360,
            color: Color.fromRGBO(255, 233, 233, 1),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Dinner",
                    style: TextStyle(
                        fontSize: 16,
                        color: Color.fromRGBO(201, 26, 26, 1),
                        fontWeight: FontWeight.w700)),
                Image.asset("assets/home/dinner.png")
              ],
            ),
          ),
          SizedBox(
            height: 24,
          ),
          Container(
            padding: EdgeInsets.only(right: 24, left: 24),
            height: 64,
            width: 360,
            color: Color.fromRGBO(250, 231, 248, 1),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Others",
                    style: TextStyle(
                        fontSize: 16,
                        color: Color.fromRGBO(200, 55, 190, 1),
                        fontWeight: FontWeight.w700)),
                Image.asset("assets/home/others.png")
              ],
            ),
          ),
          SizedBox(
            height: 24,
          )
        ],
      ),
    );
  }
}
