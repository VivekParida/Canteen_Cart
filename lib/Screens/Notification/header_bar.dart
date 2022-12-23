import 'package:flutter/material.dart';

class NotificationHeaderBar extends StatelessWidget {
  const NotificationHeaderBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Row(
      children: [
        Icon(Icons.arrow_back),
        Text(
          "Notification",
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
        )
      ],
    ));
  }
}
