import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:custom_line_indicator_bottom_navbar/custom_line_indicator_bottom_navbar.dart';
import 'package:mr_corporate/Screens/Cart/cart_page.dart';
import 'package:mr_corporate/Screens/Cart/provider_list.dart';
import 'package:mr_corporate/Screens/Home/home_page.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mr_corporate/Screens/Menu/menu_page.dart';
import 'package:mr_corporate/Screens/Wallet/wallet_page.dart';
import 'package:provider/provider.dart';

class NavBarState extends StatefulWidget {
  const NavBarState({Key? key}) : super(key: key);

  @override
  State<NavBarState> createState() => _NavBarStateState();
}

class _NavBarStateState extends State<NavBarState> {
  int _page = 0;

  List<Widget> pages = [
    const HomeScreenPageState(),
    const MenuPagestate(),
    const WalletPageState(),
    const CartPageState(),
  ];

  void updatePage(int page) {
    setState(() {
      _page = page;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[_page],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _page,
        selectedItemColor: Color.fromRGBO(238, 118, 35, 1),
        unselectedItemColor: Color.fromRGBO(238, 118, 35, 0.4),
        backgroundColor: Color.fromRGBO(255, 242, 233, 1),
        iconSize: 24,
        onTap: updatePage,
        items: [
          //Home
          BottomNavigationBarItem(
            icon: Container(
              decoration: BoxDecoration(
                border: Border(
                  top: BorderSide(
                    color: _page == 0
                        ? Color.fromRGBO(238, 118, 35, 1)
                        : Colors.white10,
                  ),
                ),
              ),
              child: SvgPicture.asset(
                "assets/NavBar/home.svg",
                height: 24,
              ),
            ),
            label: '',
          ),
          //Menu
          BottomNavigationBarItem(
            icon: Container(
              decoration: BoxDecoration(
                border: Border(
                  top: BorderSide(
                    color: _page == 1
                        ? Color.fromRGBO(238, 118, 35, 1)
                        : Colors.white10,
                  ),
                ),
              ),
              child: SvgPicture.asset(
                "assets/NavBar/menu.svg",
                height: 24,
              ),
            ),
            label: '',
          ),
          //Wallet
          BottomNavigationBarItem(
            icon: Container(
              decoration: BoxDecoration(
                border: Border(
                  top: BorderSide(
                    color: _page == 2
                        ? Color.fromRGBO(238, 118, 35, 1)
                        : Colors.white10,
                  ),
                ),
              ),
              child: SvgPicture.asset(
                "assets/NavBar/wallet.svg",
                height: 24,
              ),
            ),
            label: '',
          ),
          //Cart
          BottomNavigationBarItem(
            icon: Container(
              decoration: BoxDecoration(
                border: Border(
                  top: BorderSide(
                    color: _page == 3
                        ? Color.fromRGBO(238, 118, 35, 1)
                        : Colors.white10,
                  ),
                ),
              ),
              child: Badge(
                badgeContent: Consumer<CartProvider>(
                  builder: ((context, value, child) {
                    return Text(
                      value.getCounter().toString(),
                      style: TextStyle(color: Colors.white),
                    );
                  }),
                ),
                child: SvgPicture.asset(
                  "assets/NavBar/cart.svg",
                  height: 24,
                ),
              ),
            ),
            label: '',
          ),
        ],
      ),
    );
  }
  // int _selectedIndex = 0;

  // final screens = [
  //   HomeScreenPageState(),
  // ];

  // List<Widget> _widgetOptions = [
  //   Text('Home'),
  //   Text('Menu'),
  //   Text('Wallet'),
  //   Text('Cart'),
  // ];

  // @override
  // Widget build(BuildContext context) {
  //   return Scaffold(
  //     body: screens[_selectedIndex],
  //     bottomNavigationBar: CustomLineIndicatorBottomNavbar(
  //       selectedColor: Color.fromRGBO(238, 118, 35, 1),
  //       unSelectedColor: Colors.black54,
  //       backgroundColor: Colors.white,
  //       currentIndex: _selectedIndex,
  //       unselectedIconSize: 15,
  //       selectedIconSize: 20,
  //       onTap: (index) {
  //         setState(() {
  //           _selectedIndex = index;
  //         });
  //       },
  //       enableLineIndicator: true,
  //       lineIndicatorWidth: 3,
  //       indicatorType: IndicatorType.Top,
  //       // gradient: LinearGradient(
  //       //   colors: [Colors.pink, Colors.yellow],
  //       // ),
  //       customBottomBarItems: [
  //         CustomBottomBarItems(
  //           label: 'Home',
  //           icon: SvgPicture.asset('assets/NavBar/home.svg'),
  //         ),
  //         CustomBottomBarItems(
  //           label: 'Menu',
  //           icon: SvgPicture.asset('assets/NavBar/menu.svg'),
  //         ),
  //         CustomBottomBarItems(
  //             label: 'Wallet',
  //             icon: SvgPicture.asset('assets/NavBar/wallet.svg')),
  //         CustomBottomBarItems(
  //           label: 'Cart',
  //           icon: SvgPicture.asset('assets/NavBar/cart.svg'),
  //         ),
  //       ],
  //     ),
  //   );
  // }
}
