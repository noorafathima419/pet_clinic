import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class UserGrooming extends StatefulWidget {
  const UserGrooming({super.key});

  @override
  State<UserGrooming> createState() => _UserGroomingState();
}

class _UserGroomingState extends State<UserGrooming> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff5CB15A),
        title: Center(child: Text("Providing Services")),
      ),
      body: Column(
        children: [
          Row(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 30.w, top: 30.h),
                child: Card(
                  elevation: 3,
                  child: Container(
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Center(
                              child: Padding(
                                padding: EdgeInsets.only(left: 90.w),
                                child: Text(
                                  "Regular Hygine",
                                  style: GoogleFonts.poppins(
                                      fontSize: 20.sp,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.indigo),
                                ),
                              ),
                            )
                          ],
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: 10.w, top: 10.h),
                              child: Text("Combing & Brushing"),
                            )
                          ],
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: 10.w),
                              child: Text("Nail clipping"),
                            ), Row(
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(
                                      left: 90.w),
                                  child: Container(
                                    child: Center(
                                      child: Text(
                                        "select package",
                                        style: GoogleFonts
                                            .poppins(
                                            color: Colors
                                                .white),
                                      ),
                                    ),
                                    decoration: BoxDecoration(
                                        borderRadius:
                                        BorderRadius
                                            .circular(
                                            15.r),
                                        color: Color(
                                            0xffCD4949)),
                                    width: 150.w,
                                    height: 25,
                                  ),
                                )
                              ],
                            )
                          ],
                        ), Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: 10.w),
                              child: Text("Ear& Eye Cleaning"),
                            )
                          ],
                        ), Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: 10.w),
                              child: Text("TeathCleaning"),
                            )
                          ],
                        ), Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: 10.w),
                              child: Text("Mouth Spray"),
                            )
                          ],
                        ), Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: 10.w),
                              child: Text("Sanitary Clipping"),
                            )
                          ],
                        ), Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: 10.w),
                              child: Text("Paw massage"),
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
            ],
          )
        ],
      ),
    );
  }
}
