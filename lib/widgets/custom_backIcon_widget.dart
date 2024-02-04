// ignore_for_file: prefer_const_constructors, must_be_immutable

import 'package:flutter/material.dart';
import 'package:lava/constatnt.dart';

class BackIcon extends StatelessWidget {
  BackIcon({super.key, required this.onTap});
  Function() onTap;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8),
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          width: 15,
          height: 15,
          decoration: BoxDecoration(
            color: kWithOpsityGrey,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Center(
            child: Icon(
              Icons.arrow_back,
              size: 30,
            ),
          ),
        ),
      ),
    );
  }
}
