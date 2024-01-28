// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:lava/constatnt.dart';
import 'package:lava/views/register_page.dart';
import 'package:lava/widgets/custom_botton.dart';
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
              Text(
                'Sign In',
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
                  Text(
                    'Don\'t have an account ?',
                    style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: kBlackColor),
                  ),
                  TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => SignUpPage()),
                        );
                      },
                      child: Text(
                        'Sign up',
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: kBlackColor),
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
              SizedBox(
                height: 50,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 1.3,
                    width: 70,
                    decoration: BoxDecoration(
                      color: Colors.grey,
                    ),
                  ),
                  Text('     Or Sign In With     '),
                  Container(
                    height: 1.3,
                    width: 70,
                    decoration: BoxDecoration(
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () {},
                    child: Image.asset(
                      'assets/images/logo google.jpeg',
                      width: 60,
                      height: 60,
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Image.asset(
                      'assets/images/logo facebook.jpeg',
                      width: 50,
                      height: 50,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
