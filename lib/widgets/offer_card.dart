// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class OfferCards extends StatelessWidget {
  OfferCards({
    super.key,
    required this.imageCard,
    required this.leftPadding,
    required this.rightPadding,
    required this.ontap,
  });
  final String imageCard;
  double leftPadding;
  double rightPadding;
  final Function() ontap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      // put your link to bookink page ;;
      onTap: ontap,
      child: Padding(
        padding: EdgeInsets.only(
            top: 10, bottom: 10, left: leftPadding, right: rightPadding),
        child: Container(
          decoration: BoxDecoration(
              //color: Colors.red,
              borderRadius: BorderRadius.circular(8),
              image: DecorationImage(
                  image: AssetImage(imageCard), fit: BoxFit.cover)),
        ),
      ),
    );
  }
}
