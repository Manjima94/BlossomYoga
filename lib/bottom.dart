// ignore_for_file: prefer_const_constructors

import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:yoga_app/Favourite.dart';
import 'package:yoga_app/home.dart';
import 'package:yoga_app/profile.dart';

class Bottom extends StatefulWidget {
  const Bottom({super.key});

  @override
  State<Bottom> createState() => _BottomState();
}

class _BottomState extends State<Bottom> {
  int _pageIndex = 0;
  final PageController _pageController = PageController();

  List<Widget> pages = [
    Home(),
    Favourite(),
    Profilepage(),
  ];

  List<Widget> items = [
    Icon(
      Icons.home,
      size: 30,
      color: Color.fromARGB(255, 200, 160, 216),
    ),
    Icon(
      Icons.favorite,
      size: 30,
      color: Color.fromARGB(255, 200, 160, 216),
    ),
    Icon(
      Icons.person,
      size: 30,
      color: Color.fromARGB(255, 200, 160, 216),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        items: items,
        backgroundColor: Color.fromARGB(255, 200, 160, 216),
        index: _pageIndex,
        onTap: (index) {
          setState(() {
            _pageIndex = index;
          });
          _pageController.jumpToPage(index);
        },
      ),
      body: PageView(
        controller: _pageController,
        onPageChanged: (index) {
          setState(() {
            _pageIndex = index;
          });
        },
        children: pages,
      ),
    );
  }
}
