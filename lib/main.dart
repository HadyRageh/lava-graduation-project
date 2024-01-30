import 'package:flutter/material.dart';
import 'package:lava/views/get_started_page.dart';
import 'package:lava/views/home_page.dart';
import 'package:lava/views/register_page.dart';
import 'package:lava/views/verivication_code_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Lava',
      theme: ThemeData(
        brightness: Brightness.light,
        fontFamily: 'Poppins',
        useMaterial3: true,
      ),
      home: VerificationCodePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
