// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:lava/widgets/custom_botton.dart';
import 'package:lava/widgets/custom_other_signOut.dart';
import 'package:lava/widgets/custom_textfield.dart';

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  bool isVisable = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 20,
              ),
              Text(
                'Complete!',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700),
              ),
              SizedBox(
                height: 40,
              ),
              CustomTextField(
                labelText: 'E-Mail',
                inputType: TextInputType.emailAddress,
              ),
              SizedBox(
                height: 30,
              ),
              CustomTextField(
                  labelText: 'Password',
                  inputType: TextInputType.text,
                  obscureText: isVisable ? true : false,
                  suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          isVisable = !isVisable;
                        });
                      },
                      icon: isVisable
                          ? Icon(Icons.visibility_off)
                          : Icon(Icons.visibility))),
              SizedBox(
                height: 30,
              ),
              CustomTextField(
                  labelText: 'Confirm Password',
                  inputType: TextInputType.text,
                  obscureText: isVisable ? true : false,
                  suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          isVisable = !isVisable;
                        });
                      },
                      icon: isVisable
                          ? Icon(Icons.visibility_off)
                          : Icon(Icons.visibility))),
              SizedBox(
                height: 100,
              ),
              CustomButton(
                buttomName: 'Sign Up',
                onTap: () {},
              ),
              OtherSignInOut(),
            ],
          ),
        ),
      ),
    );
  }
}
