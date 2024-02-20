// ignore_for_file: prefer_const_constructors, must_be_immutable

import 'package:flutter/material.dart';
import 'package:lava/constatnt.dart';

class CustomNavBar extends StatelessWidget {
  CustomNavBar({
    super.key,
    required this.image,
    required this.labelName,
    this.onTap,
  });
  String image;

  String labelName;
  Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        children: [
          Expanded(
            child: Image.asset(
              image,
              width: 30,
              height: 30,
            ),
          ),
          SizedBox(
            height: 1,
          ),
          Expanded(
            child: Text(
              labelName,
              style: TextStyle(color: kPrimaryColor, fontSize: 13),
            ),
          )
        ],
      ),
    );
  }
}
