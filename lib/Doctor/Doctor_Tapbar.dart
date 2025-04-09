import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'Add_vaccination.dart';
import 'Dctoruser_details.dart';

class DoctorTapbar extends StatefulWidget {
  const DoctorTapbar({super.key});

  @override
  State<DoctorTapbar> createState() => _DoctorTapbarState();
}

class _DoctorTapbarState extends State<DoctorTapbar> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.arrow_back, color: Colors.black),
            onPressed: () {},
          ),
          actions: [Icon(Icons.notifications)],
          title: Padding(
            padding: EdgeInsets.only(left: 60.w),
            child:
            Text("USer details", style: TextStyle(color: Colors.black)),
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
                  'User',
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
                  'Appoinment',
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
          DctoruserDetails(), // Call the first class
          AddVaccination(),

          // Call the second class
        ],
      ),
      ),
    );
  }
}