// ignore_for_file: prefer_const_constructors, must_be_immutable

import 'package:flutter/material.dart';
import 'package:lava/constatnt.dart';

class CustomListTile extends StatelessWidget {
  CustomListTile(
      {super.key,
      required this.listTileName,
      required this.onTap,
      required this.leadingIcon});

  String listTileName;
  Function() onTap;
  Widget leadingIcon;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          title: Text(
            listTileName,
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
          ),
          leading: leadingIcon,
          trailing: Icon(Icons.arrow_forward_ios_rounded),
          onTap: onTap,
        ),
        SizedBox(
          height: 5,
        ),
        Divider(
          color: kGreyColor,
          endIndent: 30,
          indent: 30,
          height: 2,
        ),
      ],
    );
  }
}
