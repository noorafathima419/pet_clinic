import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pet_clinic/Admin/Admin_add_grooming.dart';
import 'package:pet_clinic/Admin/Admin_notification.dart';
import 'package:pet_clinic/Admin/Admin_user.dart';

class AdminDashboard extends StatefulWidget {
  const AdminDashboard({super.key});

  @override
  State<AdminDashboard> createState() => _AdminDashboardState();
}

class _AdminDashboardState extends State<AdminDashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff5CB15A),
        title: Padding(
          padding: EdgeInsets.only(left: 90.h),
          child: Text(
            "DashBoard",
            style: GoogleFonts.poppins(
                fontWeight: FontWeight.w500, fontSize: 20.sp),
          ),
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.person,
                color: Colors.white,
              )),
        ],
      ),
      body: Column(
        children: [
          Row(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 20.w, top: 70.h),
                child: GestureDetector(onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return AdminUser();
                  },));
                },
                  child: Container(
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(top: 40.h, left: 70.w),
                              child: Text(
                                "40",
                                style: GoogleFonts.poppins(
                                    color: Colors.black,
                                    fontSize: 40.sp,
                                    fontWeight: FontWeight.w500),
                              ),
                            )
                          ],
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: 50.w),
                              child: Text(
                                "Users",
                                style: GoogleFonts.poppins(
                                    color: Colors.black,
                                    fontSize: 25.sp,
                                    fontWeight: FontWeight.w300),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15.sp),
                        border: Border.all(width: 1.sp, color: Colors.black)),
                    height: 150.h,
                    width: 180.w,
                  ),
                ),
              ),
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 10.w, top: 70.h),
                    child: Container(
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(top: 40.h, left: 70.w),
                                child: Text(
                                  "20",
                                  style: GoogleFonts.poppins(
                                      color: Colors.black,
                                      fontSize: 40.sp,
                                      fontWeight: FontWeight.w500),
                                ),
                              )
                            ],
                          ),
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 30),
                                child: Text(
                                  "Doctors",
                                  style: GoogleFonts.poppins(
                                      color: Colors.black,
                                      fontSize: 25.sp,
                                      fontWeight: FontWeight.w300),
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          border: Border.all(width: 1, color: Colors.black)),
                      height: 150.h,
                      width: 180.w,
                    ),
                  )
                ],
              ),
            ],
          ),
          Row(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 20.w, top: 30.h),
                child: GestureDetector(onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return AdminAddGrooming();
                  },));
                },
                  child: Container(
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(top: 20.h, left: 70.w),
                              child: Text(
                                "4",
                                style: GoogleFonts.poppins(
                                    color: Colors.black,
                                    fontSize: 40,
                                    fontWeight: FontWeight.w500),
                              ),
                            )
                          ],
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: 20.w),
                              child: Text(
                                "Grooming",
                                style: GoogleFonts.poppins(
                                    color: Colors.black,
                                    fontSize: 25,
                                    fontWeight: FontWeight.w300),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        border: Border.all(width: 1, color: Colors.black)),
                    height: 150.h,
                    width: 180.w,
                  ),
                ),
              ),
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 10.w, top: 30.h),
                    child: Container(
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(top: 20.h, left: 70.w),
                                child: Text(
                                  "6",
                                  style: GoogleFonts.poppins(
                                      color: Colors.black,
                                      fontSize: 40,
                                      fontWeight: FontWeight.w500),
                                ),
                              )
                            ],
                          ),
                          Row(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(left: 50.w),
                                child: Text(
                                  "Food",
                                  style: GoogleFonts.poppins(
                                      color: Colors.black,
                                      fontSize: 25,
                                      fontWeight: FontWeight.w300),
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          border: Border.all(width: 1, color: Colors.black)),
                      height: 150.h,
                      width: 180.w,
                    ),
                  )
                ],
              )
            ],
          ),
          Row(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 20.w, top: 20.h),
                child: GestureDetector(onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return AdminNotification();
                  },));
                },
                  child: Container(
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(top: 20.h, left: 70.w),
                              child: Text(
                                "10",
                                style: GoogleFonts.poppins(
                                    color: Colors.black,
                                    fontSize: 40.sp,
                                    fontWeight: FontWeight.w500),
                              ),
                            )
                          ],
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: 10.w),
                              child: Text(
                                "Notifications",
                                style: GoogleFonts.poppins(
                                    color: Colors.black,
                                    fontSize: 20.sp,
                                    fontWeight: FontWeight.w300),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        border: Border.all(width: 1, color: Colors.black)),
                    height: 150.h,
                    width: 180.w,
                  ),
                ),
              ),
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 10.w, top: 20.h),
                    child: Container(
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Padding(
                                  padding:
                                  EdgeInsets.only(top: 30.h, left: 70.w),
                                  child: Icon(
                                    Icons.logout,
                                    size: 40.sp,
                                  ))
                            ],
                          ),
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 50),
                                child: Text(
                                  "Log out",
                                  style: GoogleFonts.poppins(
                                      color: Colors.black,
                                      fontSize: 25,
                                      fontWeight: FontWeight.w300),
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          border: Border.all(width: 1, color: Colors.black)),
                      height: 150.h,
                      width: 180.w,
                    ),
                  )
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}