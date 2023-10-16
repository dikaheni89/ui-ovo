// ignore_for_file: file_names, unnecessary_new, prefer_const_constructors, sort_child_properties_last, unused_field, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:ui_ovo/components/MainBtnNavbar.dart';
import 'package:ui_ovo/components/MainFAB.dart';
import 'package:ui_ovo/pages/HomePage.dart';

class MainNavigation extends StatefulWidget {
  const MainNavigation({Key? key}) : super(key: key);

  @override
  State<MainNavigation> createState() => _MainNavigationState();
}

class _MainNavigationState extends State<MainNavigation> {
  late PageController _pageController;

  @override
  void initState() {
    _pageController = new PageController(initialPage: 0);
    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: PageView(
        controller: _pageController,
        children: [
          HomePage(title: "OVO")
        ],
        physics: NeverScrollableScrollPhysics(),
      ),
      floatingActionButton: MainFAB(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: MainBottomNavBar(
        pageController: _pageController
      ),
    );
  }
}
