import 'package:flutter/material.dart';
import 'package:mr_corporate/Screens/Menu/header_menu_page.dart';
import 'package:mr_corporate/Screens/Notification/header_bar.dart';
import 'package:mr_corporate/Screens/Notification/notificatiions.dart';
import 'package:mr_corporate/Screens/Notification/type_of_notification.dart';

class NotificatiionPageState extends StatefulWidget {
  const NotificatiionPageState({Key? key}) : super(key: key);

  @override
  State<NotificatiionPageState> createState() => _NotificatiionPageStateState();
}

class _NotificatiionPageStateState extends State<NotificatiionPageState> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(right: 24, left: 24, top: 48),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              NotificationHeaderBar(),
              NotificationTypeState(),
              Notifications()
            ],
          ),
        ),
      ),
    );
  }
}
