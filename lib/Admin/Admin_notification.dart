import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class AdminNotification extends StatefulWidget {
  const AdminNotification({super.key});

  @override
  State<AdminNotification> createState() => _AdminNotificationState();
}

class _AdminNotificationState extends State<AdminNotification> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(
      backgroundColor: Colors.green,
      leading: IconButton(
        icon: Icon(Icons.arrow_back, color: Colors.black),
        onPressed: () {},
      ),
      title: Padding(
        padding: EdgeInsets.only(left: 80.w),
        child: Text("Notification", style: TextStyle(color: Colors.black)),
      ),
    ),
      body: Column(
        children: [
          Row(
            children: [
              Padding(
                padding:  EdgeInsets.only(top: 30.h, left: 35.w),
                child: Card(
                  child: Container(
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Padding(
                              padding:  EdgeInsets.only(left: 10.w),
                              child: Text(
                                "Matter",
                                style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.w400, fontSize: 20.sp),
                              ),
                            )
                          ],
                        ),
                        Row(
                          children: [
                            Padding(
                              padding:  EdgeInsets.only(left: 40.w, top: 20.h),
                              child: Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5.r),
                                    color: Colors.white),
                                height: 350.h,
                                width: 250.w,
                              ),
                            )
                          ],
                        ),
                        Row(
                          children: [
                            Padding(
                              padding:  EdgeInsets.only(left: 40.w, top: 10.h),
                              child: Container(
                                child: Padding(
                                  padding:
                                  EdgeInsets.only(top: 10.h, left: 20.w),
                                  child: Text(
                                    "Time",
                                    style: GoogleFonts.poppins(fontSize: 15.sp),
                                  ),
                                ),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15.r),
                                    color: Colors.white),
                                height: 50.h,
                                width: 250.w,
                              ),
                            )
                          ],
                        ),Row(
                          children: [
                            Padding(
                              padding:  EdgeInsets.only(left: 40.w, top: 10.h),
                              child: Container(
                                child: Padding(
                                  padding:
                                  EdgeInsets.only(top: 10.h, left: 20.w),
                                  child: Text(
                                    "Date",
                                    style: GoogleFonts.poppins(fontSize: 15.sp),
                                  ),
                                ),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15.r),
                                    color: Colors.white),
                                height: 50.h,
                                width: 250.w,
                              ),
                            )
                          ],
                        ),
                        Row(
                          children: [
                            Padding(
                              padding:
                              EdgeInsets.only(left: 60.w, top: 100.h),
                              child: Container(
                                child: Padding(
                                  padding:
                                  EdgeInsets.only(top: 10.h, left: 70.w),
                                  child: Text(
                                    "ADD",
                                    style: GoogleFonts.poppins(
                                        fontSize: 20.sp,
                                        fontWeight: FontWeight.w600),
                                  ),
                                ),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15.r),
                                    color: Colors.lightGreen),
                                height: 50.h,
                                width: 200.w,
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                    height: 700.h,
                    width: 330.w,
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