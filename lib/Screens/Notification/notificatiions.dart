import 'dart:ui';

import 'package:flutter/material.dart';

class Notifications extends StatelessWidget {
  const Notifications({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 92,
          width: 366,
          color: Color.fromRGBO(255, 242, 233, 1),
          child: Row(
            children: [
              CircleAvatar(),
              Column(
                children: [
                  Text(
                    "Header",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                  ),
                  Text(
                    "Body",
                    softWrap: false,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                    style: TextStyle(fontSize: 8, fontWeight: FontWeight.w400),
                  )
                ],
              )
            ],
          ),
        ),
        SizedBox(
          height: 16,
        ),
        Container(
          height: 92,
          width: 366,
          color: Color.fromRGBO(255, 242, 233, 1),
          child: Row(
            children: [
              CircleAvatar(),
              Column(
                children: [
                  Text(
                    "Header",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                  ),
                  Text(
                    "Body",
                    softWrap: false,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                    style: TextStyle(fontSize: 8, fontWeight: FontWeight.w400),
                  )
                ],
              )
            ],
          ),
        ),
        SizedBox(
          height: 16,
        ),
        Container(
          height: 92,
          width: 366,
          color: Color.fromRGBO(255, 242, 233, 1),
          child: Row(
            children: [
              CircleAvatar(),
              Column(
                children: [
                  Text(
                    "Header",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                  ),
                  Text(
                    "Body",
                    softWrap: false,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                    style: TextStyle(fontSize: 8, fontWeight: FontWeight.w400),
                  )
                ],
              )
            ],
          ),
        ),
        SizedBox(
          height: 16,
        ),
        Container(
          height: 92,
          width: 366,
          color: Color.fromRGBO(255, 242, 233, 1),
          child: Row(
            children: [
              CircleAvatar(),
              Column(
                children: [
                  Text(
                    "Header",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                  ),
                  Text(
                    "Body",
                    softWrap: false,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                    style: TextStyle(fontSize: 8, fontWeight: FontWeight.w400),
                  )
                ],
              )
            ],
          ),
        ),
        SizedBox(
          height: 16,
        ),
        Container(
          height: 92,
          width: 366,
          color: Color.fromRGBO(255, 242, 233, 1),
          child: Row(
            children: [
              CircleAvatar(),
              Column(
                children: [
                  Text(
                    "Header",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                  ),
                  Text(
                    "Body",
                    softWrap: false,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                    style: TextStyle(fontSize: 8, fontWeight: FontWeight.w400),
                  )
                ],
              )
            ],
          ),
        ),
        SizedBox(
          height: 16,
        ),
        Container(
          height: 92,
          width: 366,
          color: Color.fromRGBO(255, 242, 233, 1),
          child: Row(
            children: [
              CircleAvatar(),
              Column(
                children: [
                  Text(
                    "Header",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                  ),
                  Text(
                    "Body",
                    softWrap: false,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                    style: TextStyle(fontSize: 8, fontWeight: FontWeight.w400),
                  )
                ],
              )
            ],
          ),
        ),
        SizedBox(
          height: 16,
        ),
      ],
    );
  }
}
