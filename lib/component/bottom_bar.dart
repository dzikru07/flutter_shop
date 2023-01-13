import 'package:flutter/material.dart';
import 'package:flutter_shop/main.dart';

import '../content/home_page.dart';
import '../style/color.dart';

class NavigationBarComponen extends StatefulWidget {
  const NavigationBarComponen({super.key});

  @override
  State<NavigationBarComponen> createState() => _NavigationBarComponenState();
}

class _NavigationBarComponenState extends State<NavigationBarComponen> {
  int pageIndex = 0;

  final pages = [
    MyHomePage(),
    MyHomePage(),
    MyHomePage(),
    MyHomePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mainColor,
      body: pages[pageIndex],
      bottomNavigationBar: buildMyNavBar(context),
    );
  }

  Container buildMyNavBar(BuildContext context) {
    print(pageIndex);
    return Container(
      height: 60,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            padding: EdgeInsets.all(pageIndex == 0 ? 0 : 5),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Colors.transparent),
            child: Column(
              children: [
                IconButton(
                    onPressed: () {
                      setState(() {
                        pageIndex = 0;
                      });
                    },
                    enableFeedback: false,
                    icon: Image.asset(
                      "assets/logo/home_bar.png",
                      height: 20,
                    )),
                pageIndex != 0
                    ? SizedBox()
                    : Container(
                        height: 3,
                        width: 55,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10)),
                      )
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(pageIndex == 1 ? 0 : 5),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Colors.transparent),
            child: Column(
              children: [
                IconButton(
                    onPressed: () {
                      setState(() {
                        pageIndex = 1;
                      });
                    },
                    enableFeedback: false,
                    icon: Image.asset("assets/logo/fav_bar.png", height: 20)),pageIndex != 1 ? SizedBox() :   Container(
                      height: 3,
                      width: 55,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10)),
                    )
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(pageIndex == 2 ? 0 : 5),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Colors.transparent),
            child: Column(
              children: [
                IconButton(
                    onPressed: () {
                      setState(() {
                        pageIndex = 2;
                      });
                    },
                    enableFeedback: false,
                    icon: Image.asset("assets/logo/cart_bar.png", height: 20)), pageIndex != 2 ? SizedBox() :   Container(
                      height: 3,
                      width: 55,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10)),
                    )
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(pageIndex == 3 ? 0 : 5),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Colors.transparent),
            child: Column(
              children: [
                IconButton(
                    onPressed: () {
                      setState(() {
                        pageIndex = 3;
                      });
                    },
                    enableFeedback: false,
                    icon: Image.asset("assets/logo/bar_profile.png", height: 20)), pageIndex != 3 ? SizedBox() :    Container(
                      height: 3,
                      width: 55,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10)),
                    )
              ],
            ),
          )
        ],
      ),
    );
  }
}
