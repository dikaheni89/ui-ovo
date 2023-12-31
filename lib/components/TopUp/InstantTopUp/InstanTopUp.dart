// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:ui_ovo/components/TopUp/InstantTopUp/Component/KartuDebit.dart';
import 'package:ui_ovo/components/TopUp/InstantTopUp/Component/PilihTopUp.dart';
import 'package:ui_ovo/components/TopUp/InstantTopUp/Component/TopUpKe.dart';

class InstantTopUp extends StatelessWidget {
  const InstantTopUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: SingleChildScrollView(
        child: Column(
          children: [
            TopUpKe(),
            PilihTopUp(),
            PilihKartuDebit(),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        elevation: 8,
        child: Container(
          padding: EdgeInsets.fromLTRB(15, 16, 15, 7),
          width: double.infinity,
          child: Container(
            width: double.infinity,
            height: MediaQuery.of(context).size.height / 15,
            decoration: BoxDecoration(
              color: Colors.grey[300],
              borderRadius: BorderRadius.circular(19),
            ),
            child: Center(
                child: Text(
              "Top Up Sekarang",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w600,
              ),
            )),
          ),
        ),
      ),
    );
  }
}
