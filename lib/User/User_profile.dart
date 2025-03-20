import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class UserProfile extends StatefulWidget {
  const UserProfile({super.key});

  @override
  State<UserProfile> createState() => _UserProfileState();
}

class _UserProfileState extends State<UserProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.green,
        leading: Icon(Icons.arrow_back_ios_new),
        title: Padding(
          padding: EdgeInsets.only(left: 90.w),
          child: Text(
            "User Profile",
            style: GoogleFonts.hind(fontSize: 18.sp, fontWeight: FontWeight.bold),
          ),
        ),
      ),
      body: Column(
        children: [
          Row(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 130.w, top: 30.h),
                child: CircleAvatar(
                  child: Icon(
                    Icons.person,
                    size: 90.sp,
                    color: Colors.grey,
                  ),
                  radius: 70.r,
                ),
              )
            ],
          ),
          Row(
            children: [
              SizedBox(
                width: 170.w,
              ),
              Text(
                "Name",
                style: GoogleFonts.hind(fontSize: 16.sp),
              )
            ],
          ),
          Row(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 30.w, top: 30.h),
                child: Container(
                  child: Padding(
                    padding: EdgeInsets.only(left: 20.w, top: 20.h),
                    child: Text(
                      "Username",
                      style:
                      GoogleFonts.hind(color: Colors.white, fontSize: 12.sp),
                    ),
                  ),
                  width: 320.w,
                  height: 56.h,
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
                padding: EdgeInsets.only(left: 30.w, top: 30.h),
                child: Container(
                  child: Padding(
                    padding: EdgeInsets.only(left: 20.w, top: 20.h),
                    child: Text(
                      "Number",
                      style:
                      GoogleFonts.hind(color: Colors.white, fontSize: 12.sp),
                    ),
                  ),
                  width: 320.w,
                  height: 56.h,
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
                padding: EdgeInsets.only(left: 30.w, top: 30.h),
                child: Container(
                  child: Padding(
                    padding: EdgeInsets.only(left: 20.w, top: 20.h),
                    child: Text(
                      "Email",
                      style:
                      GoogleFonts.hind(color: Colors.white, fontSize: 12.sp),
                    ),
                  ),
                  width: 320.w,
                  height: 56.h,
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
                padding: EdgeInsets.only(left: 30.w, top: 30.h),
                child: Container(
                  child: Padding(
                    padding: EdgeInsets.only(left: 20.w, top: 20.h),
                    child: Text(
                      "Location",
                      style:
                      GoogleFonts.hind(color: Colors.white, fontSize: 12.sp),
                    ),
                  ),
                  width: 320.w,
                  height: 56.h,
                  decoration: BoxDecoration(
                      color: Color(0xff5CB15A),
                      borderRadius: BorderRadius.circular(10.r)),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}