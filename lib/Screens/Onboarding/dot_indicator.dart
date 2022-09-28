import 'package:flutter/material.dart';

class DotIndicator extends StatelessWidget {
  const DotIndicator({
    Key? key,
    this.isActive = false,
  }) : super(key: key);

  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: isActive ? 8 : 8,
      width: 8,
      decoration: BoxDecoration(
          color: isActive
              ? Color.fromRGBO(238, 118, 35, 1)
              : Color.fromARGB(255, 226, 220, 216),
          borderRadius: BorderRadius.all(Radius.circular(18))),
    );
  }
}
