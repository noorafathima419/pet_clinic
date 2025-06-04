import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pet_clinic/gridview/Dry_food.dart';
import 'package:pet_clinic/gridview/User_kittenFood.dart';
import 'package:pet_clinic/gridview/User_wetfood.dart';

class FoodTapbar extends StatefulWidget {
  const FoodTapbar({super.key});

  @override
  State<FoodTapbar> createState() => _FoodTapbarState();
}

class _FoodTapbarState extends State<FoodTapbar> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.arrow_back, color: Colors.black),
            onPressed: () {},
          ),

          title: Padding(
            padding: EdgeInsets.only(left: 60.w),
            child:
            Text("Pet Food", style: TextStyle(color: Colors.black)),
          ),
          bottom: TabBar(
            labelColor: Colors.white,
            unselectedLabelColor: Colors.black,
            indicatorSize: TabBarIndicatorSize.tab,
            indicator: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Color(0xffCEEFCF),
            ),
            tabs: [
              Tab(
                child: Text(
                  'Dry Food',
                  style: TextStyle(
                    // color: Colors.white,
                    fontSize: 16,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w500,
                    height: 0,
                  ),
                ),
              ),
              Tab(
                child: Text(
                  'Wet Food',
                  style: TextStyle(
                    // color: Colors.white,
                    fontSize: 16,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w500,
                    height: 0,
                  ),
                ),
              ), Tab(
                child: Text(
                  'Kitten Food',
                  style: TextStyle(
                    // color: Colors.white,
                    fontSize: 16,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w500,
                    height: 0,
                  ),
                ),
              ), Tab(
                child: Text(
                  'Wellness Eats',
                  style: TextStyle(
                    // color: Colors.white,
                    fontSize: 16,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w500,
                    height: 0,
                  ),
                ),
              ),
            ],
          ),
        ),body: TabBarView(
        children: [
          DryFood(), // Call the first class
          UserWetfood(),
          UserKittenfood(),
          UserKittenfood(),

          // Call the second class
        ],
      ),
      ),
    );
  }
}