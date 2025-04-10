import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class AdminAddGrooming extends StatefulWidget {
  const AdminAddGrooming({super.key});

  @override
  State<AdminAddGrooming> createState() => _AdminAddGroomingState();
}

class _AdminAddGroomingState extends State<AdminAddGrooming> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(
      backgroundColor: Color(0xff5CB15A),
      title: Padding(
        padding: EdgeInsets.only(left: 150.w),
        child: Text(
          "SERVICES",
          style: GoogleFonts.poppins(
              fontWeight: FontWeight.w500, fontSize: 20.sp),
        ),
      ),
    ),
        body: Column(children: [
          Row(children: [
            Padding(
                padding: EdgeInsets.only(left: 20.w, top: 30.h),
                child: Card(
                  child: Container(
                      child: ListView(children: [
                        Column(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: 30.w, right: 40.r,top: 30.h),
                              child: Container(
                                // width: 300.w,
                                child: TextFormField(
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(
                                        borderSide:
                                        BorderSide(color: Colors.white),
                                        borderRadius:
                                        BorderRadius.circular(10.r)),
                                    prefixIconColor: Colors.white,
                                    suffixIconColor: Colors.pink,
                                    hintText: "package name",
                                    fillColor: Colors.white,
                                    filled: true,
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 30.w, right: 1.w),
                              child: Container(
                                // width: 300.w,
                                child: TextFormField(
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(
                                        borderSide:
                                        BorderSide(color: Colors.white),
                                        borderRadius:
                                        BorderRadius.circular(10.r)),
                                    prefixIconColor: Colors.white,
                                    suffixIconColor: Colors.pink,
                                    hintText: "Service name",
                                    fillColor: Colors.white,
                                    filled: true,
                                  ),
                                ),
                              ),
                            ),

                            Padding(
                              padding: EdgeInsets.only(left: 30.w, right: 40.w),
                              child: Container(
                                // width: 300.w,
                                child: TextFormField(
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(
                                        borderSide:
                                        BorderSide(color: Colors.white),
                                        borderRadius:
                                        BorderRadius.circular(10.r)),
                                    prefixIconColor: Colors.white,
                                    suffixIconColor: Colors.pink,
                                    hintText: "mail",
                                    fillColor: Colors.white,
                                    filled: true,
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 30.w, right: 40.w),
                              child: Container(
                                // width: 300.w,
                                child: TextFormField(
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(
                                        borderSide:
                                        BorderSide(color: Colors.white),
                                        borderRadius:
                                        BorderRadius.circular(10.r)),
                                    prefixIconColor: Colors.white,
                                    suffixIconColor: Colors.pink,
                                    hintText: "place",
                                    fillColor: Colors.white,
                                    filled: true,
                                  ),
                                ),
                              ),
                            ),

                            Padding(
                              padding: EdgeInsets.only(left: 30.w, right: 40.w),
                              child: Container(
                                // width: 300.w,
                                child: TextFormField(
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(
                                        borderSide:
                                        BorderSide(color: Colors.white),
                                        borderRadius:
                                        BorderRadius.circular(10.r)),
                                    prefixIconColor: Colors.white,
                                    suffixIconColor: Colors.pink,
                                    hintText: "password",
                                    fillColor: Colors.white,
                                    filled: true,
                                  ),
                                ),
                              ),
                            ),
                            Row(
                              children: [
                                Padding(
                                  padding:
                                  EdgeInsets.only(left: 30.w, top: 30.h),
                                  child: Container(
                                    child: Padding(
                                      padding:  EdgeInsets.only(
                                          top: 5.h, left: 20.w),
                                      child: Text(
                                        "Accept",
                                        style: GoogleFonts.poppins(
                                            color: Colors.white,
                                            fontWeight: FontWeight.w500,
                                            fontSize: 20.sp),
                                      ),
                                    ),
                                    height: 40.h,
                                    width: 130.w,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(15.r),
                                        color: Colors.lightGreen),
                                  ),
                                ),
                                Padding(
                                  padding:
                                  EdgeInsets.only(left: 10.w, top: 30.h),
                                  child: Container(
                                    child: Padding(
                                      padding:  EdgeInsets.only(
                                          top: 5.h, left: 20.w),
                                      child: Text(
                                        "Reject",
                                        style: GoogleFonts.poppins(
                                            color: Colors.white,
                                            fontWeight: FontWeight.w500,
                                            fontSize: 20.sp),
                                      ),
                                    ),
                                    height: 40.h,
                                    width: 130.w,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(15.r),
                                        color: Colors.red),
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                      ]),
                      height: 700.h,
                      width: 350.w,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.r),
                        color: Color(0xffF0E4E4),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black
                                .withOpacity(0.2), // Shadow color with opacity
                            spreadRadius: 0, // How much the shadow spreads
                            blurRadius: 4, // Softness of the shadow
                            offset:
                            Offset(0, 4), // X and Y offset of the shadow
                          ),
                        ],
                      )),
                )),
          ]),
        ]));
  }
}
