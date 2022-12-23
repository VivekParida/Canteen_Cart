import 'dart:ui';

import 'package:flutter/material.dart';

class YourPreviousOrderState extends StatelessWidget {
  const YourPreviousOrderState({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Container(
        alignment: Alignment.topCenter,
        padding: EdgeInsets.only(top: 8, bottom: 8, right: 24, left: 24),
        height: 56,
        color: Color.fromRGBO(238, 118, 35, 1),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Your Previous Order",
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: Colors.white),
                ),
                Text(
                  "Lorem ipsum dolor sit amet, consectetur ...",
                  softWrap: false,
                  overflow: TextOverflow.ellipsis,
                  maxLines: 1,
                  style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: Colors.white),
                ),
              ],
            ),
            SizedBox(
              height: 39,
              width: 110,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(8))),
                ),
                child: Text(
                  "Add",
                  style: TextStyle(color: Color.fromRGBO(238, 118, 35, 1)),
                ),
              ),
            )
          ],
        ),
      ),
    ]);
  }
}
