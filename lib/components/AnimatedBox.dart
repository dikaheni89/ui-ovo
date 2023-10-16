// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables, non_constant_identifier_names, unused_local_variable, avoid_unnecessary_containers, prefer_const_constructors

import 'package:flutter/material.dart';

class AnimatedBox extends StatefulWidget {
  final clear;
  final active;
  final value;
  const AnimatedBox({Key? key, this.clear = false, this.active = false, this.value}) : super(key: key);

  @override
  State<AnimatedBox> createState() => _AnimatedBoxState();
}

class _AnimatedBoxState extends State<AnimatedBox> with TickerProviderStateMixin {
  late AnimationController animationController;

  @override
  void initState() {
    super.initState();
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 600)
    );
  }

  @override
  Widget build(BuildContext context) {
    if (widget.clear) {
      animationController.forward(from: 0);
    }
    return AnimatedBuilder(
      animation: animationController,
      builder: (context, child) => Container(
        margin: EdgeInsets.all(8.0),
        child: Stack(
          children: [
            Container(),
            Align(
              alignment: Alignment(0, animationController.value/ widget.value - 1),
              child: Container(
                width: 10.0,
                height: 10.0,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: widget.active ? Colors.white : Colors.white24
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
