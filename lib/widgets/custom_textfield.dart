// ignore_for_file: must_be_immutable, prefer_const_constructors

import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  CustomTextField(
      {this.labelText,
      this.inputType,
      this.onChanged,
      this.suffixIcon,
      this.prefixWidget,
      this.obscureText = false});
  Function(String)? onChanged;

  String? labelText;

  TextInputType? inputType;
  bool? obscureText;
  Widget? suffixIcon;
  Widget? prefixWidget;
  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: obscureText!,
      onChanged: onChanged,
      keyboardType: inputType,
      decoration: InputDecoration(
        isDense: true,
        suffixIcon: suffixIcon,

        prefix: prefixWidget,
        labelText: labelText,
        labelStyle: TextStyle(
          color: Colors.grey.withOpacity(0.5),
          fontSize: 20,
          fontWeight: FontWeight.w300,
        ),
        contentPadding: EdgeInsets.all(16),

        fillColor: Colors.grey.withOpacity(0.1),
        // Color(0xffF8F8F8),
        filled: true,
        /* */ enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.grey.withOpacity(0.3),
            width: 1,
          ),
          borderRadius: BorderRadius.circular(10),
        ),
        /* */ border: OutlineInputBorder(
          borderSide: BorderSide(),
          borderRadius: BorderRadius.circular(10),
        ),
        /* */ focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
              color: Colors.black.withOpacity(0.5),
              width: 1,
              style: BorderStyle.solid),
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}
