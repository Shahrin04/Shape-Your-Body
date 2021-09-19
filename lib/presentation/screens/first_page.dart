import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shape_your_body_app/utils/universal_variables.dart';

import 'cart_screen.dart';
import 'home_screen.dart';
import 'list_screen.dart';
import 'profile_screen.dart';

class FirstPage extends StatefulWidget {

  @override
  _FirstPageState createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  int _page = 0;
  PageController pageController;

  @override
  void initState() {
    super.initState();
    pageController = PageController();
  }

  void onPageChanged(int page) {
    setState(() {
      _page = page;
    });
  }

  void navigationTapped(int page) {
    pageController.jumpToPage(page);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: SafeArea(
        child: PageView(
          controller: pageController,
          onPageChanged: onPageChanged,
          //physics: NeverScrollableScrollPhysics(),
          children: [
            Center(
              child: HomeScreen(),
            ),
            Center(
              child: ListScreen(
                text: 'List Screen',
              ),
            ),
            Center(
              child: CartScreen(text: 'Cart Screen'),
            ),
            Center(
              child: ProfileScreen(text: 'Profile Screen'),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
          height: 70,
          decoration: BoxDecoration(color: UniversalVariables.grey_light),
          child: ClipRRect(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(40), topRight: Radius.circular(30)),
            child: CupertinoTabBar(
              iconSize: 35,
              backgroundColor: Colors.white,
              onTap: navigationTapped,
              items: <BottomNavigationBarItem>[
                BottomNavigationBarItem(
                  icon: Container(
                    decoration: (_page == 0)
                        ? BoxDecoration(
                            border: Border(
                                bottom: BorderSide(
                            width: 2,
                            color: UniversalVariables.purple,
                          )))
                        : BoxDecoration(),
                    child: Icon(Icons.home_filled,
                        color: (_page == 0)
                            ? UniversalVariables.purple
                            : UniversalVariables.grey),
                  ),
                ),

                BottomNavigationBarItem(
                  icon: Container(
                    decoration: (_page == 1)
                        ? BoxDecoration(
                        border: Border(
                            bottom: BorderSide(
                              width: 2,
                              color: UniversalVariables.purple,
                            )))
                        : BoxDecoration(),
                    child: Icon(Icons.featured_play_list_sharp,
                        color: (_page == 1)
                            ? UniversalVariables.purple
                            : UniversalVariables.grey),
                  ),
                ),

                BottomNavigationBarItem(
                  icon: Container(
                    decoration: (_page == 2)
                        ? BoxDecoration(
                        border: Border(
                            bottom: BorderSide(
                              width: 2,
                              color: UniversalVariables.purple,
                            )))
                        : BoxDecoration(),
                    child: Icon(Icons.shopping_cart_rounded,
                        color: (_page == 2)
                            ? UniversalVariables.purple
                            : UniversalVariables.grey),
                  ),
                ),

                BottomNavigationBarItem(
                  icon: Container(
                    decoration: (_page == 3)
                        ? BoxDecoration(
                        border: Border(
                            bottom: BorderSide(
                              width: 2,
                              color: UniversalVariables.purple,
                            )))
                        : BoxDecoration(),
                    child: Icon(Icons.person_rounded,
                        color: (_page == 3)
                            ? UniversalVariables.purple
                            : UniversalVariables.grey),
                  ),
                ),
              ],
            ),
          )),
    );
  }
}

