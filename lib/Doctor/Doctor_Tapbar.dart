import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pet_clinic/Doctor/Doctor_ViewPetProfile.dart';
import 'package:pet_clinic/Doctor/Doctor_notification.dart';
import 'package:pet_clinic/Doctor/View_Appoinment_details.dart';
import 'package:pet_clinic/Doctor/Doctor_userDetails.dart';

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
          actions: [
            IconButton(
              icon: Icon(Icons.pets),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return DoctorViewpetprofile();
                }));
              },
            ),
          ],

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
          DoctorUserdetails(), // Call the first class
          AddVaccination(),

          // Call the second class
        ],
      ),
      ),
    );
  }
}