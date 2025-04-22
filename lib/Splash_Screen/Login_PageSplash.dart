import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pet_clinic/Admin/Admin_login.dart';
import 'package:pet_clinic/Doctor/Doctor_login.dart';
import 'package:pet_clinic/User/user_login.dart';

class LoginPagesplash extends StatefulWidget {
  const LoginPagesplash({super.key});

  @override
  State<LoginPagesplash> createState() => _LoginPagesplashState();
}

class _LoginPagesplashState extends State<LoginPagesplash> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Color(0xff5CB15A),
      body: Column(
        children: [
          Row(
            children: [
              Padding(
                padding: EdgeInsets.only(top: 50.h, left: 130.w),
                child: Container(
                  width: 160.w,
                  height: 160.h,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("Assets/tow 1.png"))),
                ),
              )
            ],
          ),
          InkWell(
            onTap: () {
              print("object");
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) {
                  return DoctorLogin();
                },
              ));
              ;
            },
            child: Padding(
              padding: EdgeInsets.only(right: 80.r, left: 60.w, top: 70.h),
              child: Container(
                child: Padding(
                  padding: EdgeInsets.only(top: 10.h, left: 100.w),
                  child: Text(
                    "Doctor",
                    style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w700,
                        fontSize: 18.sp,
                        color: Colors.black),
                  ),
                ),
                width: 286.w,
                height: 50.h,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10.sp)),
              ),
            ),
          ),
          InkWell(
            onTap: () {
              print("object");
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) {
                  return UserLogin();
                },
              ));
              ;
            },
            child: Padding(
              padding: EdgeInsets.only(right: 80.r, left: 60.w, top: 20.h),
              child: Container(
                child: Padding(
                  padding: EdgeInsets.only(left: 100.w, top: 10.h),
                  child: Text(
                    "User",
                    style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w700,
                        fontSize: 18.sp,
                        color: Colors.black),
                  ),
                ),
                width: 286.w,
                height: 50.h,
                decoration: BoxDecoration(
                    color: Color(0xffA8D58E),
                    borderRadius: BorderRadius.circular(10.sp)),
              ),
            ),
          ),
          TextButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) {
                    return AdminLogin();
                  },
                ));
              },
              child: Text(
                "Admin Login",
                style: GoogleFonts.poppins(
                    color: Color(0xff2357D9),
                    fontSize: 22.sp,
                    fontWeight: FontWeight.w600),
              )),Padding(
            padding:
            EdgeInsets.only(right: 80.r, left: 60.w, top: 160.h),
            child: Container(
              child: Center(
                child: Text(
                  "CONTINUE",
                  style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w700,
                      fontSize: 18.sp,
                      color: Colors.black),
                ),
              ),
              width: 200.w,
              height: 50.h,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10.sp)),
            ),
          ),
        ],
      ),
    );
  }
}