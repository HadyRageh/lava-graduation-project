// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:lava/views/about_car_wash.dart';
import 'package:lava/widgets/custom_backIcon_widget.dart';
import 'package:lava/widgets/search_texr_field.dart';

class CarWashPage extends StatelessWidget {
  const CarWashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        scrolledUnderElevation: 0,
        leading: BackIcon(),
        title: SearchTextField(),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 5),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Special For You',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 14,
              ),
              GestureDetector(
                  onTap: () {},
                  child: Image.asset(
                    'assets/images/Frame 34032.png',
                  )),
              SizedBox(
                height: 14,
              ),
              GestureDetector(
                  onTap: () {},
                  child: Image.asset(
                    'assets/images/Frame 34033.png',
                  )),
              SizedBox(
                height: 14,
              ),
              GestureDetector(
                  onTap: () {},
                  child: Image.asset('assets/images/Frame 34031.png')),
              SizedBox(
                height: 14,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 5),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Car Wash',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 14,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    // there is  have a shared details...
                    GestureDetector(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: ((context) {
                            return AboutCarWashPage();
                          })));
                        },
                        child: Image.asset(
                          'assets/images/dry wash.png',
                        )),
                    SizedBox(
                      width: 14,
                    ),
                    GestureDetector(
                        onTap: () {},
                        child: Image.asset(
                          'assets/images/steam wash.png',
                        )),
                    SizedBox(
                      width: 14,
                    ),

                    GestureDetector(
                        onTap: () {},
                        child: Image.asset('assets/images/foam wash.png')),
                    SizedBox(
                      width: 14,
                    ),

                    GestureDetector(
                        onTap: () {},
                        child: Image.asset('assets/images/polishing.png')),
                    SizedBox(
                      width: 14,
                    ),

                    GestureDetector(
                        onTap: () {},
                        child: Image.asset('assets/images/engine wash.png')),
                    SizedBox(
                      width: 14,
                    ),

                    GestureDetector(
                        onTap: () {},
                        child: Image.asset('assets/images/seats wash.png')),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
