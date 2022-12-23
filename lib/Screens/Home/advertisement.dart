import 'package:flutter/material.dart';

class AdvertiseState extends StatelessWidget {
  const AdvertiseState({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 134,
      padding: EdgeInsets.all(24),
      child: Container(
        padding: EdgeInsets.only(right: 14, left: 20),
        height: 84,
        width: 366,
        decoration: BoxDecoration(
            color: Color.fromRGBO(255, 242, 233, 1),
            borderRadius: BorderRadius.circular(16)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Text(
                "Pre-book meals/dishes altogether at one go",
                softWrap: false,
                overflow: TextOverflow.ellipsis,
                maxLines: 2,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: Color.fromRGBO(238, 118, 35, 1),
                ),
              ),
            ),
            Image.asset("assets/advertise.png")
          ],
        ),
      ),
    );
  }
}
