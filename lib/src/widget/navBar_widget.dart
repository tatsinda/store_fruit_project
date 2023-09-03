import 'package:flutter/material.dart';
import 'package:toutousotre_project/src/pages/cartPage.dart';
import 'package:toutousotre_project/src/pages/categoryPage.dart';
import 'package:toutousotre_project/src/pages/favoritePage.dart';
import '../constants.dart';
import '../pages/profilePage.dart';
import '../pages/homePage.dart';

class NavBarWidget extends StatefulWidget {
  @override
  State<NavBarWidget> createState() => _NavBarWidgetState();
}

class _NavBarWidgetState extends State<NavBarWidget> {
  List pages = [
    HomePage(),
    CategoryPage(),
    CartPage(),
    FavoritePage(),
    ProfilePage(),
  ];

  int CurrentIndex = 0;
  void onTape(int index) {
    setState(() {
      CurrentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[CurrentIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: onTape,
        type: BottomNavigationBarType.fixed,
        iconSize: 30,
        selectedFontSize: 14.0,
        landscapeLayout: BottomNavigationBarLandscapeLayout.spread,
        backgroundColor: Colors.white,
        currentIndex: CurrentIndex,
        selectedItemColor: kMainColor,
        unselectedItemColor: Colors.grey.withOpacity(0.5),
        showSelectedLabels: false,
        showUnselectedLabels: false,
        elevation: 10,
        items: [
          const BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
              ),
              label: 'Orders'),
          const BottomNavigationBarItem(
              icon: Icon(
                Icons.repeat_on_outlined,
                //size: 25,
              ),
              label: 'Category'),
          BottomNavigationBarItem(
              icon: Stack(children: [
                const Icon(
                  Icons.shopping_cart_rounded,
                  //size: 30,
                ),
                Positioned(
                  top: 0,
                  right: 0,
                  child: Container(
                    width: 10,
                    height: 10,
                    decoration: const BoxDecoration(
                      color: kMainColor,
                      shape: BoxShape.circle,
                    ),
                  ),
                )
              ]),
              label: 'Cart'
              //size: 30,
              ),
          BottomNavigationBarItem(
              icon: Stack(children: [
                const Icon(
                  Icons.favorite,
                  //size: 30,
                ),
                Positioned(
                  top: 0,
                  right: 0,
                  child: Container(
                    width: 10,
                    height: 10,
                    decoration: const BoxDecoration(
                      color: kMainColor,
                      shape: BoxShape.circle,
                    ),
                  ),
                )
              ]),
              label: 'Favoris'),
          const BottomNavigationBarItem(
              icon: Icon(
                Icons.person,
              ),
              label: 'Profile'),
        ],
      ),
    );
  }
}
