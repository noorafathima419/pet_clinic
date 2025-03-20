import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class UserHomepage extends StatefulWidget {
  const UserHomepage({super.key});

  @override
  State<UserHomepage> createState() => _UserHomepageState();
}

class _UserHomepageState extends State<UserHomepage> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.person),
      ),
      body: Column(
        children: [
          Row(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 20.w),
                child: Text(
                  "Welcome to Our  ",
                  style: GoogleFonts.inter(fontSize: 32.sp),
                ),
              )
            ],
          ),
          Row(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 20.w),
                child: Text(
                  "happy Pet’s family",
                  style: GoogleFonts.inter(fontSize: 32.sp),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 100.h,
            width: 360.w,
            child: Row(
              children: [
                Expanded(
                  child: TextFormField(
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.symmetric(
                          vertical: 15.sp,
                          horizontal: 20.h), // Adjust padding inside field
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30.r),
                      ),
                      prefixIconColor: Color(0xffE5E5E5),
                      suffixIconColor: Color(0xffE5E5E5),
                      prefixIcon: Icon(
                        Icons.search,
                        color: Colors.black,
                      ),
                      hintText: "Search",
                      filled: false,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Row(
            children: [
              SizedBox(
                width: 20.w,
              ),
              Text(
                "Categoires",
                style: GoogleFonts.inter(fontSize: 20.sp),
              ),
              Padding(
                padding: EdgeInsets.only(left: 190.w),
                child: Text(
                  "See all",
                  style: GoogleFonts.inter(color: Color(0xff46E4E4)),
                ),
              )
            ],
          ),
          Row(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 40.w, top: 30.h),
                child: Container(
                  height: 132.h,
                  width: 160.w,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(
                            "Assets/petgrooming-removebg-preview 1.png")),
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15.r),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black
                            .withOpacity(0.2), // Shadow color with opacity
                        spreadRadius: 0, // How much the shadow spreads
                        blurRadius: 4, // Softness of the shadow
                        offset: Offset(0, 4), // X and Y offset of the shadow
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 20.w, top: 30.h),
                child: Container(
                  height: 132.h,
                  width: 160.w,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(
                            "Assets/vaccination-removebg-preview 1.png")),
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15.r),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black
                            .withOpacity(0.2), // Shadow color with opacity
                        spreadRadius: 0, // How much the shadow spreads
                        blurRadius: 4, // Softness of the shadow
                        offset: Offset(0, 4), // X and Y offset of the shadow
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 50.w),
                child: Text(
                  "GROOMING",
                  style: GoogleFonts.inter(),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 90.w),
                child: Text(
                  "VACCINATION",
                  style: GoogleFonts.inter(),
                ),
              )
            ],
          ),
          Row(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 40.w, top: 30.h),
                child: Container(
                  height: 132.h,
                  width: 160.w,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(
                            "Assets/foodnew-removebg-preview 1.png")),
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black
                            .withOpacity(0.2), // Shadow color with opacity
                        spreadRadius: 0, // How much the shadow spreads
                        blurRadius: 4, // Softness of the shadow
                        offset: Offset(0, 4), // X and Y offset of the shadow
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 20.w, top: 30.h),
                child: Container(
                  height: 132.h,
                  width: 160.w,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image:
                        AssetImage("Assets/images-removebg-preview 1.png")),
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15.r),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black
                            .withOpacity(0.2), // Shadow color with opacity
                        spreadRadius: 0, // How much the shadow spreads
                        blurRadius: 4, // Softness of the shadow
                        offset: Offset(0, 4), // X and Y offset of the shadow
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
          Row(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 50.w),
                child: Text(
                  "FOOD",
                  style: GoogleFonts.inter(),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 140.w),
                child: Text(
                  "APPOINMENT",
                  style: GoogleFonts.inter(),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
