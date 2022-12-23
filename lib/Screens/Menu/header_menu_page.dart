import 'package:flutter/material.dart';

class HeaderState extends StatelessWidget {
  const HeaderState({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(bottom: 48),
      child: Row(
        children: [
          Icon(Icons.arrow_back),
          SizedBox(
            width: 24,
          ),
          Text(
            "Menu",
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
          ),
        ],
      ),
    );
  }
}
