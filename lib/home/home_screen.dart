import 'package:flutter/material.dart';
import 'package:movies_app/home/drowse/drowse_tap.dart';
import 'package:movies_app/home/firis_home/home_tap.dart';
import 'package:movies_app/home/search/search_tap.dart';
import 'package:movies_app/home/watchlist/watchlist_tap.dart';

import '../app_colors.dart';

import '../app_colors.dart';

class HomeScreen extends StatefulWidget {
  static const String routName = "Home_Screen";

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Scaffold(
        bottomNavigationBar: Theme(
          data: Theme.of(context)
              .copyWith(canvasColor: Theme.of(context).primaryColor),
          child: BottomNavigationBar(
              currentIndex: selectedIndex,
              onTap: (index) {
                selectedIndex = index;
                setState(() {});
              },
              items: [
                BottomNavigationBarItem(
                    icon: ImageIcon(
                      AssetImage("assets/images/home_icon.png"),
                    ),
                    label: "HOME"),
                BottomNavigationBarItem(
                    icon: ImageIcon(
                      AssetImage("assets/images/search.png"),
                    ),
                    label: "SEARCH"),
                BottomNavigationBarItem(
                    icon: ImageIcon(
                      AssetImage("assets/images/drowse.png"),
                    ),
                    label: "Browse"),
                BottomNavigationBarItem(
                    icon: ImageIcon(
                      AssetImage("assets/images/watchlist.png"),
                    ),
                    label: "Watchlist")
              ]),
        ),
        body: taps[selectedIndex],
      )
    ]);
  }

  List<Widget> taps = [
    HomeTap(),
    SearchTap(),
    DrowseTap(),
    WatchlistTap(),
  ];
}
