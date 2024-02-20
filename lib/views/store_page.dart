// ignore_for_file: prefer_const_constructors, unused_element

import 'package:flutter/material.dart';

import 'package:lava/constatnt.dart';
import 'package:lava/views/details_accessories_screen.dart';
import 'package:lava/views/details_car_screen.dart';
import 'package:lava/widgets/custom_accessories_card.dart';

import 'package:lava/widgets/custom_car_card.dart';
import 'package:lava/widgets/search_texr_field.dart';

class StorePage extends StatefulWidget {
  const StorePage({Key? key}) : super(key: key);

  @override
  State<StorePage> createState() => _StorePageState();
}

int isSelected = 0;

class _StorePageState extends State<StorePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        //  height: double.infinity,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 40),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              // CustomBackIcon(),
              SearchTextField(),
              SizedBox(
                height: 15,
              ),
              Container(
                width: 236,
                height: 35,
                decoration: BoxDecoration(
                  color: kWithOpsityGrey,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Expanded(
                      child: _buildProductCategory(index: 0, name: 'Cars'),
                    ),
                    Expanded(
                      child:
                          _buildProductCategory(index: 1, name: 'Accessories'),
                    ),
                  ],
                ),
              ),

              Expanded(
                child: isSelected == 0
                    ? _buildCarsProducts()
                    : _buildAccessoriesProducts(),
              ),
            ],
          ),
        ),
      ),
    );
  }

  _buildProductCategory({required int index, required String name}) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isSelected = index;
        });
      },
      child: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: isSelected == index ? kWhiteColor : kWithOpsityGrey,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Text(
          name,
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }

  _buildCarsProducts() {
    return GridView.builder(
      shrinkWrap: true,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 3 / 2,
        crossAxisSpacing: 15,
        mainAxisSpacing: 15,
        mainAxisExtent: 200,
      ),
      scrollDirection: Axis.vertical,
      itemCount: 12,
      itemBuilder: (BuildContext context, int index) {
        return GestureDetector(
            onTap: () {
              // navigator to details screen
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => DetailsCarScreen()),
              );
            },
            child: CustomCarCard());
      },
    );
  }

  _buildAccessoriesProducts() {
    return GridView.builder(
      shrinkWrap: true,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: (3 / 2),
        crossAxisSpacing: 15,
        mainAxisSpacing: 15,
        mainAxisExtent: 180,
      ),
      scrollDirection: Axis.vertical,
      itemCount: 12,
      itemBuilder: (context, index) {
        return GestureDetector(
            onTap: () {
              // navigator to details screen
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => DetailsAcessoriesScreen()),
              );
            },
            child: CustomAccessoriesCard());
      },
    );
  }
}
