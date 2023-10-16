// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:ui_ovo/components/Background.dart';
import 'package:ui_ovo/components/Cash.dart';
import 'package:ui_ovo/components/Info_Carousel.dart';
import 'package:ui_ovo/components/Info_Menarik.dart';
import 'package:ui_ovo/components/MainAppBar.dart';
import 'package:ui_ovo/components/ServicesMenu.dart';
import 'package:ui_ovo/components/Topup.dart';

class HomePage extends StatefulWidget {
  final String title;
  const HomePage({Key? key, required this.title}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: mainappbar(widget.title),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  color: Colors.white,
                  height: MediaQuery.of(context).size.height * 0.5
                ),
                PurpleBG(),
                Column(
                  children: [
                    OVOCash(),
                    TopUpService(),
                    ServiceMenu(),
                    InfoPromoCarousel(),
                    InfoMenarik()
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
