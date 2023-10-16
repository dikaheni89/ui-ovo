// ignore_for_file: file_names

import 'dart:async';
import 'package:flutter/material.dart';
import 'package:ui_ovo/pages/MainNavigation.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {

  @override
  void initState() {
    Timer(
      const Duration(
        seconds: 5
      ), () {
        Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (context) => const MainNavigation())
        );
      }
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple,
      body: Center(
        child: Image.asset(
          'assets/logo.png',
          width: 300.0,
          height: 300.0,
        ),
      ),
    );
  }
}
