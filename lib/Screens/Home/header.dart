import 'package:flutter/material.dart';
import 'package:mr_corporate/Screens/Notification/notification_page.dart';

class HomeHeader extends StatefulWidget {
  const HomeHeader({Key? key}) : super(key: key);

  @override
  State<HomeHeader> createState() => _HomeHeaderState();
}

class _HomeHeaderState extends State<HomeHeader> {
  Icon customIcon = const Icon(Icons.search);

  Widget customSearchBar = const Text('My Personal Journal');

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 184,
      color: Color.fromRGBO(238, 118, 35, 1),
      child: Padding(
        padding: const EdgeInsets.only(right: 24, left: 24, top: 48),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(
                  Icons.menu,
                  color: Colors.white,
                ),
                InkWell(
                  onTap: () {},
                  child: Container(
                    decoration: BoxDecoration(
                        color: Color.fromRGBO(255, 255, 255, 0.15),
                        borderRadius: BorderRadius.circular(24)),
                    height: 34,
                    width: 144,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "13 Oct 2022",
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: Colors.white),
                        ),
                        Icon(
                          Icons.expand_more_outlined,
                          color: Colors.white,
                        )
                      ],
                    ),
                  ),
                ),
                InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => NotificatiionPageState(),
                          ));
                    },
                    child: Image.asset("assets/notifications.png"))
              ],
            ),
            SizedBox(
              height: 24,
            ),
            Container(
              padding: EdgeInsets.only(left: 16),
              height: 48,
              width: 366,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(32),
              ),
              child: TextField(
                decoration: InputDecoration(
                    hintText: 'Search food',
                    hintStyle: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontStyle: FontStyle.italic,
                    ),
                    border: InputBorder.none),
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
            ),

            // IconButton(
            //   color: Colors.white,
            //     onPressed: () {
            //       setState(() {
            //         if (customIcon.icon == Icons.search) {
            //           customIcon = const Icon(Icons.cancel);
            //           customSearchBar = const ListTile(
            //             leading: Icon(
            //               Icons.search,
            //               color: Colors.white,
            //               size: 28,
            //             ),
            //             title: TextField(
            //               decoration: InputDecoration(
            //                 hintText: 'type in journal name...',
            //                 hintStyle: TextStyle(
            //                   color: Colors.white,
            //                   fontSize: 18,
            //                   fontStyle: FontStyle.italic,
            //                 ),
            //                 border: InputBorder.none,
            //               ),
            //               style: TextStyle(
            //                 color: Colors.white,
            //               ),
            //             ),
            //           );
            //         } else {
            //           customIcon = const Icon(Icons.search);
            //           customSearchBar = const Text('My Personal Journal');
            //         }
            //       });
            //     },
            //     icon: customIcon)
          ],
        ),
      ),
    );
  }
}
