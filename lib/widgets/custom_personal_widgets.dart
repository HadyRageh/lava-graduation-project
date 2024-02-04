// ignore_for_file: prefer_const_constructors, must_be_immutable

import 'package:flutter/material.dart';
import 'package:lava/constatnt.dart';

class CustomPersonalInfoWidget extends StatelessWidget {
  CustomPersonalInfoWidget(
      {super.key,
      this.titleName,
      this.headerName,
      this.onPressed,
      this.editName});
  String? titleName;
  String? headerName;
  String? editName;

  Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Align(
          alignment: Alignment.topLeft,
          child: Text(
            titleName!,
            style: TextStyle(
                fontSize: 20, color: kGreyColor, fontWeight: FontWeight.w500),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              headerName!,
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
            ),
            TextButton(
                onPressed: onPressed,
                child: Text(
                  editName!,
                  style: TextStyle(color: kPrimaryColor, fontSize: 18),
                )),
          ],
        ),
      ],
    );
  }
}
