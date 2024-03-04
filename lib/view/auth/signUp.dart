// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lava/view/auth/verivication_code_page.dart';
import 'package:lava/view/widget/custom_botton.dart';
import 'package:lava/view/widget/custom_textfield.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

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
                'Sign Up',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700),
              ),
              SizedBox(
                height: 40,
              ),
              CustomTextField(
                labelText: 'First Name',
                inputType: TextInputType.text,
              ),
              SizedBox(
                height: 30,
              ),
              CustomTextField(
                labelText: 'Last Name',
                inputType: TextInputType.text,
              ),
              SizedBox(
                height: 30,
              ),
              CustomTextField(
                labelText: 'Phone Number',
                inputType: TextInputType.number,
                prefixWidget: Row(
                  children: [
                    Image.asset('assets/images/twemoji_flag-egypt.png'),
                    SizedBox(
                      width: 3,
                    ),
                    Text('(+20)')
                  ],
                ),
              ),
              SizedBox(
                height: 100,
              ),
              CustomButton(
                buttomName: 'Continue',
                onTap: () {
                  Get.to(() => VerificationCodePage());
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
