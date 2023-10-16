// ignore_for_file: prefer_const_constructors, deprecated_member_use

import 'package:flutter/material.dart';
import 'package:ui_ovo/components/Image_Carousel.dart';
import 'package:ui_ovo/utility/Constant.dart';

class InfoPromoCarousel extends StatelessWidget {
  const InfoPromoCarousel({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      margin: EdgeInsets.only(bottom: 10),
      padding: EdgeInsets.only(top: 25, bottom: 17),
      child: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 19),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  "Info dan Promo Spesial",
                  style: Theme.of(context).textTheme.headline6,
                ),
                Text(
                  "Lihat Semua",
                  style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.w600,
                      color: cyantext),
                )
              ],
            ),
          ),
          SizedBox(height: 16),
          Imagecarousel()
        ],
      ),
    );
  }
}
