// ignore_for_file: prefer_const_constructors, must_be_immutable

import 'package:flutter/material.dart';
import 'package:lava/constatnt.dart';

class CustomSkipAndBackButtom extends StatelessWidget {
  CustomSkipAndBackButtom({super.key, required this.onTap, required this.icon});
  Function() onTap;
  IconData icon;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 50,
        width: 50,
        decoration: BoxDecoration(
          color: Color(0xffD8F0F4),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Center(
            child: Icon(
          icon,
          color: kBlackColor,
          size: 27,
        )),
      ),
    );
  }
}
