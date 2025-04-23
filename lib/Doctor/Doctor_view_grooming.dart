import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pet_clinic/Doctor/Doctor_Tapbar.dart';

class DoctorViewGrooming extends StatefulWidget {
  const DoctorViewGrooming({super.key});

  @override
  State<DoctorViewGrooming> createState() => _DoctorViewGroomingState();
}

class _DoctorViewGroomingState extends State<DoctorViewGrooming> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(
              builder: (context) {
                return DoctorTapbar();
              },
            ));
          },
        ),
        title: Padding(
          padding: EdgeInsets.only(left: 50.w),
          child:
              Text("Grooming Details", style: TextStyle(color: Colors.black)),
        ),
      ),
      body: Column(
        children: [
          Row(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 140.w, top: 50.h),
                child: Container(
                  height: 70,
                  width: 90,
                  decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    color: Colors.grey[400],
                  ),
                  child: Icon(Icons.person, size: 40.sp, color: Colors.white),
                ),
              ),
            ],
          ),
          Row(
            children: [
              Center(
                child: Padding(
                  padding: EdgeInsets.only(left: 150.w),
                  child: Text(
                    "Name",
                    style: GoogleFonts.poppins(fontSize: 20.sp),
                  ),
                ),
              )
            ],
          ),
          Row(
            children: [
              Center(
                child: Padding(
                  padding: EdgeInsets.only(left: 145.w),
                  child: Text(
                    "Pet name",
                    style: GoogleFonts.poppins(fontSize: 14.sp),
                  ),
                ),
              )
            ],
          ),
          Row(
            children: [
              Center(
                child: Padding(
                  padding: EdgeInsets.only(left: 120.w, top: 100.h),
                  child: Text(
                    "Regular Hygiene",
                    style: GoogleFonts.poppins(fontSize: 20.sp),
                  ),
                ),
              )
            ],
          ),
          Row(children: [
            Padding(
              padding: EdgeInsets.only(left: 30.w, top: 30.h),
              child: Card(
                elevation: 3,
                child: Container(
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Padding(
                              padding: EdgeInsets.only(left: 10.w, top: 10.h),
                              child: Text("Combing & Brushing"))
                        ],
                      ),
                      Row(
                        children: [
                          Padding(
                              padding: EdgeInsets.only(left: 10.w),
                              child: Text("Nail Clipping")),
                          Row(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(left: 90.w),
                                child: Container(
                                  child: Center(
                                    child: Text(
                                      "Ear & Eye Cleaning",
                                      style: GoogleFonts.poppins(
                                          color: Colors.white),
                                    ),
                                  ),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15.r),
                                      color: Color(0xffCD4949)),
                                  width: 150.w,
                                  height: 25,
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                      Row(
                        children: [
                          Padding(
                              padding: EdgeInsets.only(left: 10.w),
                              child: Text("Paw Massage"))
                        ],
                      ),
                      Row(
                        children: [
                          Padding(
                              padding: EdgeInsets.only(left: 10.w),
                              child: Text("Sanitary Clipping"))
                        ],
                      ),
                      Row(
                        children: [
                          Padding(
                              padding: EdgeInsets.only(left: 10.w),
                              child: Text("Teeth Cleaning"))
                        ],
                      ),
                      Row(
                        children: [
                          Padding(
                              padding: EdgeInsets.only(left: 10.w),
                              child: Text("Mouth Washing"))
                        ],
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 10.w),
                            child: Text("Deshedding"),
                          )
                        ],
                      ),
                    ],
                  ),
                  height: 300.h,
                  width: 350.4,
                ),
              ),
            )
          ])
        ],
      ),
    );
  }
}
