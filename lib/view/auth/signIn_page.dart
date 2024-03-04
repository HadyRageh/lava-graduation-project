// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lava/constatnt.dart';
import 'package:lava/view/auth/signUp.dart';
import 'package:lava/view/widget/custom_text.dart';
import 'package:lava/widgets/custom_botton.dart';
import 'package:lava/widgets/custom_Botton_social_medial.dart';
import 'package:lava/widgets/custom_textfield.dart';

class SignInPage extends StatefulWidget {
  SignInPage({super.key});

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
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
              CustomText(
                text: 'Sign In',
                fontSize: 24,
                fontWeight: FontWeight.w700,
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
                          ? Icon(
                              Icons.visibility_off,
                            )
                          : Icon(
                              Icons.visibility,
                              color: kPrimaryColor,
                            ))),
              SizedBox(
                height: 10,
              ),
              TextButton(
                  onPressed: () {},
                  child: Text(
                    'Forget Password?',
                    style: TextStyle(
                        decoration: TextDecoration.underline,
                        decorationColor: Color(
                          0xff004269,
                        ),
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: Color(
                          0xff004269,
                        )),
                  )),
              SizedBox(
                height: 80,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomText(
                    text: 'Don\'t have an account ?',
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                  ),
                  TextButton(
                      onPressed: () {
                        Get.to(() => SignUpPage());
                      },
                      child: CustomText(
                        text: 'Sign up',
                      )),
                ],
              ),
              SizedBox(
                height: 6,
              ),
              CustomButton(
                buttomName: 'Sign In',
                onTap: () {},
              ),
              CustomBottonSocialMedia(),
            ],
          ),
        ),
      ),
    );
  }
}
