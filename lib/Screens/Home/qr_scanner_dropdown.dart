import 'package:flutter/material.dart';

class QRdropDownBar extends StatefulWidget {
  const QRdropDownBar({Key? key}) : super(key: key);

  @override
  State<QRdropDownBar> createState() => _QRdropDownBarState();
}

class _QRdropDownBarState extends State<QRdropDownBar> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        height: 44,
        color: Color.fromRGBO(40, 36, 97, 1),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Open My QR Code",
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: Colors.white),
            ),
            SizedBox(
              width: 8,
            ),
            Icon(
              Icons.expand_more_outlined,
              color: Colors.white,
            )
          ],
        ),
      ),
    );
  }
}
