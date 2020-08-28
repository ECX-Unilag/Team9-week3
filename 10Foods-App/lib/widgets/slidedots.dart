import 'package:flutter/material.dart';

class SlideDots extends StatelessWidget {
  bool isActive;
  SlideDots(this.isActive);

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 150),
      margin: const EdgeInsets.symmetric(
        horizontal: 10,
      ),
      height: isActive ? 16 : 13,
      width: isActive ? 16 : 13,
      decoration: BoxDecoration(
        color: isActive ? Color(0xffEA7E00) : Colors.blueGrey,
        borderRadius: BorderRadius.all(
          Radius.circular(15),
        ),
      ),
    );
  }
}
