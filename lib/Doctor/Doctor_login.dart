import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class DoctorLogin extends StatefulWidget {
  const DoctorLogin({super.key});

  @override
  State<DoctorLogin> createState() => _DoctorLoginState();
}

class _DoctorLoginState extends State<DoctorLogin> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold( backgroundColor: Color(0xff5CB15A),
        body: Container(
          child: Column(children: [
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 170.h, left: 50.w),
                  child: Container(
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Padding(
                                  padding: EdgeInsets.only(left: 110.w),
                                  child: Text(
                                    "Login",
                                    style: GoogleFonts.inter(fontSize: 36.sp),
                                  ))
                            ],
                          ),
                          Row(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(left: 30.w, top: 70.h),
                                child: Container(
                                  child: Row(
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.only(left: 10.w),
                                        child: Icon(
                                          Icons.email,
                                          size: 20.sp,
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(left: 30.w),
                                        child: Row(
                                          children: [
                                            Text(
                                              "Email",
                                              style: GoogleFonts.inter(
                                                  fontSize: 12.sp),
                                            ),
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                  width: 269.w,
                                  height: 50.h,
                                  decoration: BoxDecoration(
                                      color: Color(0xff5CB15A),
                                      borderRadius: BorderRadius.circular(10.r)),
                                ),
                              )
                            ],
                          ),
                          Row(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(left: 30.w, top: 50.h),
                                child: Container(
                                  child: Row(
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.only(left: 10.w),
                                        child: Icon(
                                          Icons.password,
                                          size: 20.sp,
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(left: 30.w),
                                        child: Row(
                                          children: [
                                            Text(
                                              "Password",
                                              style: GoogleFonts.inter(
                                                  fontSize: 12.sp),
                                            ),
                                            Row(
                                              children: [
                                                Padding(
                                                  padding: EdgeInsets.only(
                                                      left: 110.w),
                                                  child: Icon(
                                                    Icons.remove_red_eye,
                                                    size: 20.sp,
                                                    shadows: [
                                                      Shadow(blurRadius: 6.r)
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            )
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                  width: 269.w,
                                  height: 50.h,
                                  decoration: BoxDecoration(
                                      color: Color(0xff5CB15A),
                                      borderRadius: BorderRadius.circular(10.r)),
                                ),
                              )
                            ],
                          ),
                          Row(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(left: 80.w, top: 50.h),
                                child: Container(
                                  child: Center(
                                      child: Text(
                                        "LOGIN",
                                        style: GoogleFonts.inter(fontSize: 16.sp),
                                      )),
                                  width: 166.w,
                                  height: 40.h,
                                  decoration: BoxDecoration(
                                      color: Color(0xff5CB15A),
                                      borderRadius: BorderRadius.circular(10.r)),
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                      height: 400.h,
                      width: 325.w,
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
                )
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 100.w, top: 80.h),
                  child: Text(
                    "Don’t have an account?",
                    style: GoogleFonts.inter(fontSize: 20.sp),
                  ),
                )
              ],
            ),
            Row(
              children: [
                Padding(
                    padding: EdgeInsets.only(left: 160.w, top: 10.h),
                    child: Text(
                      "REGISTER",
                      style: GoogleFonts.inter(
                        fontSize: 20.sp,
                        color: Color(0xffFA6A6A),
                      ),
                    ))
              ],
            )
          ]),
        ));
  }
}