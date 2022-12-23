import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:mr_corporate/Screens/Menu/Dishes/dishes_selection.dart';
import 'package:mr_corporate/Screens/Menu/meals/meal_selection.dart';

class FoodTypeState extends StatefulWidget {
  const FoodTypeState({Key? key}) : super(key: key);

  @override
  State<FoodTypeState> createState() => _FoodTypeStateState();
}

class _FoodTypeStateState extends State<FoodTypeState> {
  @override
  Widget build(BuildContext context) {
    TabController _tabController;
    // @override
    // void initState() {
    //   super.initState();
    //   _tabController = TabController(length: 2, vsync: this);
    // }

    return DefaultTabController(
      length: 2,
      child: Expanded(
        child: Scaffold(
          appBar: AppBar(
            automaticallyImplyLeading: false,
            backgroundColor: Colors.white10,
            elevation: 0,
            flexibleSpace: Column(children: [
              TabBar(
                  indicator: BoxDecoration(
                    borderRadius: BorderRadius.circular(8), // Creates border
                    color: Color.fromRGBO(255, 242, 233, 1),
                  ),
                  tabs: [
                    Container(
                      height: 50,
                      alignment: Alignment.center,
                      child: Text("Meal",
                          style: TextStyle(
                              color: Color.fromRGBO(238, 118, 35, 1),
                              fontSize: 16)),
                    ),
                    Container(
                      height: 50,
                      alignment: Alignment.center,
                      child: Text("Dishes",
                          style: TextStyle(
                              color: Color.fromRGBO(238, 118, 35, 1),
                              fontSize: 16)),
                    )
                  ]),
            ]),
          ),
          body: TabBarView(
              children: [MealSelectionPageState(), DishesSelectionPageState()]),
        ),
      ),
    );
    // Container(
    //   padding: EdgeInsets.all(24),
    //   child: Row(
    //     children: [
    //       Container(
    //         height: 68,
    //         width: 160,
    //         color: Color.fromRGBO(255, 242, 233, 1),
    //         child: Center(
    //             child: Text(
    //           "Meals",
    //           style: TextStyle(color: Color.fromRGBO(238, 118, 35, 1)),
    //         )),
    //       ),
    //       SizedBox(
    //         width: 8,
    //       ),
    //       Container(
    //         height: 68,
    //         width: 160,
    //         //color: Color.fromRGBO(255, 242, 233, 1),
    //         child: Center(
    //             child: Text(
    //           "Dishes",
    //           style: TextStyle(color: Color.fromRGBO(238, 118, 35, 1)),
    //         )),
    //       )
    //     ],
    //   ),
    // );
  }
}
