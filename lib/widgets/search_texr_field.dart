// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:lava/constatnt.dart';

class SearchTextField extends StatelessWidget {
  const SearchTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        fillColor: Color(0xffF8F8F8),
        filled: true,
        prefixIcon: Icon(
          Icons.search,
          color: kBlackColor,
        ),
        contentPadding: EdgeInsets.all(8),
        hintText: 'Search',
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide.none,
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide.none,
        ),
      ),
    );
  }
}
