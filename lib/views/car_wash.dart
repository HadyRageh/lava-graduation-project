// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, unnecessary_string_interpolations

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lava/constatnt.dart';
import 'package:lava/model/car_wach_items.dart';

import 'package:lava/view/widget/custom_text.dart';
import 'package:lava/view/home/about_car_wash.dart';
import 'package:lava/views/search_screen.dart';

import 'package:lava/widgets/search_texr_field.dart';

class CarWashScreen extends StatelessWidget {
  const CarWashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kWhiteColor,
        scrolledUnderElevation: 0,
        title: InkWell(
            onTap: () {
              showSearch(context: context, delegate: DataSearch());
            },
            child: SearchTextField(
              enabled: false,
            )),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: ListView(
          //  mainAxisAlignment: MainAxisAlignment.start,
          children: [
            CustomText(
              text: 'Special For You',
              fontSize: 22,
              fontWeight: FontWeight.w700,
            ),
            SizedBox(
              height: 15,
            ),
            Image.asset(
              'assets/images/Frame 34032.png',
            ),
            SizedBox(
              height: 10,
            ),
            Image.asset(
              'assets/images/Frame 34033.png',
            ),
            SizedBox(
              height: 10,
            ),
            Image.asset('assets/images/Frame 34031.png'),
            SizedBox(
              height: 15,
            ),
            CustomText(
              text: 'Car Wash',
              fontSize: 22,
              fontWeight: FontWeight.w700,
            ),
            SizedBox(
              height: 15,
            ),
            SizedBox(
              height: 250,
              width: 200,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: item.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: Container(
                      decoration: BoxDecoration(
                          color: kWithOpsityGrey,
                          borderRadius: BorderRadius.circular(10)),
                      child: Padding(
                        padding: const EdgeInsets.only(
                          bottom: 20,
                          left: 10,
                          right: 10,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.asset(
                                item[index].image,
                                //  'assets/images/Frame 34031.png',
                                width: 200,
                                height: 140,
                              ),
                            ),
                            SizedBox(
                              width: 200,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Expanded(
                                    flex: 3,
                                    child: CustomText(
                                      text: '${item[index].name}',
                                      //text: 'Dry Wash',
                                      fontSize: 14,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                  Expanded(
                                    flex: 1,
                                    child: CustomText(
                                      text: '${item[index].price}L.E',
                                      color: kPrimaryColor,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            SizedBox(
                              width: 200,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  GestureDetector(
                                    onTap: () {
                                      Get.to(AboutCarWashPage(), arguments: {
                                        'data': item[index],
                                      });
                                    },
                                    child: Container(
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        color: kPrimaryColor,
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 20, vertical: 5),
                                        child: CustomText(
                                          text: 'Booking',
                                          color: kWhiteColor,
                                          alignment: Alignment.center,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
