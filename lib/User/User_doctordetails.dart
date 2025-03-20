import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class UserDoctordetails extends StatefulWidget {
  const UserDoctordetails({super.key});

  @override
  State<UserDoctordetails> createState() => _UserDoctordetailsState();
}

class _UserDoctordetailsState extends State<UserDoctordetails> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff5CB15A),
        title: Center(child: Text("DOCTOR")),
      ),
      body: Column(
        children: [
          Row(
            children: [
              Text(
                "Our Best Veterinarian",
                style: GoogleFonts.inter(fontSize: 15.sp,fontWeight: FontWeight.bold),
              ),
              Padding(
                padding: EdgeInsets.only(left: 130.w),
                child: Text(
                  "See all",
                  style: GoogleFonts.inter(color: Color(0xff46E4E4)),
                ),
              )
            ],
          ),
          Expanded(
            child: ListView.builder(
              itemCount: 4,
              itemBuilder: (context, index) {
                return Card(
                  elevation: 3,
                  margin:  EdgeInsets.symmetric(vertical: 10),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.r)),
                  child: Container(
                    padding:  EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: Color(0xffCF6A6AF0E4E4),
                      borderRadius: BorderRadius.circular(20.r),
                    ),
                    child: Row(
                      children: [
                        Container(
                          height: 50.h,
                          width: 50.w,
                          decoration: BoxDecoration(
                            shape: BoxShape.rectangle,
                            color: Colors.grey[400],
                          ),
                          child:  Icon(Icons.person,
                              size: 30.sp, color: Colors.white),
                        ),
                         SizedBox(width: 16.w),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Name",
                                  style: GoogleFonts.inter(
                                      fontSize: 16.sp,
                                      fontWeight: FontWeight.w600)),
                              Text("Experience",
                                  style: GoogleFonts.inter(
                                      fontSize: 14.sp, color: Colors.black,fontWeight: FontWeight.w600)),
                              Text("Specialist",
                                style: GoogleFonts.inter(
                                    fontSize: 14.sp, color: Colors.black,fontWeight: FontWeight.w600),),
                              Text("Contact number",
                                  style: GoogleFonts.inter(
                                      fontSize: 14.sp, color: Colors.black,fontWeight: FontWeight.w600)),
                               SizedBox(height: 4.h),
                              Row(
                                children: [
                                   Icon(Icons.access_time,
                                    size: 16.sp, color: Colors.black,),
                                   SizedBox(width: 5.w),
                                  Text("Monday - Friday at 8:00 am - 5:00pm",
                                      style: GoogleFonts.inter(
                                          fontSize: 12.sp, color: Colors.black)),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}