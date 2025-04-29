import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pet_clinic/Doctor/Doctor_Tapbar.dart';

class ViewUserdetails extends StatefulWidget {
  const ViewUserdetails(
      {super.key,
      required this.id,
      required this.name,
      required this.number,
      required this.email,
      required this.location});
  final id;
  final name;
  final number;
  final email;
  final location;

  @override
  State<ViewUserdetails> createState() => _ViewUserdetailsState();
}

class _ViewUserdetailsState extends State<ViewUserdetails> {
  Future<void> select_accept() async {
    FirebaseFirestore.instance
        .collection("user_register")
        .doc(widget.id)
        .update({"Status": 1});
  }

  Future<void> select_reject() async {
    FirebaseFirestore.instance
        .collection("Request")
        .doc(widget.id)
        .update({"Status": 2});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Color(0xff5CB15A),
          leading: IconButton(onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return DoctorTapbar();
            },));
          }, icon: Icon(Icons.arrow_back_ios_new))
      ),
      body: Column(
        children: [
          Row(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 20.w, top: 50.h),
                child: Container(
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 130.w),
                            child: CircleAvatar(
                              radius: 50.r,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 20.w,top: 30.h),
                            child: Text(
                              "Name:",
                              style: GoogleFonts.poppins(
                                  fontSize: 19.sp, fontWeight: FontWeight.w400),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 70.w,top: 30.h),
                            child: Text(
                              "${widget.name}",
                              style: GoogleFonts.poppins(
                                  fontSize: 17.sp, fontWeight: FontWeight.w700),
                            ),
                          ),
                        ],
                      ),
                      Row(children: [
                        Padding(
                          padding: EdgeInsets.only(left: 20.w, top: 30.h),
                          child: Text(
                            "Contact number:",
                            style: GoogleFonts.poppins(
                                fontSize: 19.sp, fontWeight: FontWeight.w400),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 20.w, top: 30.h),
                          child: Text(
                            "${widget.number}",
                            style: GoogleFonts.poppins(
                                fontSize: 17.sp, fontWeight: FontWeight.w700),
                          ),
                        ),
                      ]),
                      Row(children: [
                        Padding(
                          padding: EdgeInsets.only(left: 20.w, top: 30.h),
                          child: Text(
                            "Email:",
                            style: GoogleFonts.poppins(
                                fontSize: 19.sp, fontWeight: FontWeight.w400),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 50.w,top: 30.h),
                          child: Text(
                            "${widget.email}",
                            style: GoogleFonts.poppins(
                                fontSize: 17.sp, fontWeight: FontWeight.w700),
                          ),
                        ),
                      ]),
                      Row(children: [
                        Padding(
                          padding: EdgeInsets.only(left: 20.w, top: 30.h),
                          child: Text(
                            "Place:",
                            style: GoogleFonts.poppins(
                                fontSize: 19.sp, fontWeight: FontWeight.w400),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 50.w, top: 30.h),
                          child: Text(
                            "${widget.location}",
                            style: GoogleFonts.poppins(
                                fontSize: 17.sp, fontWeight: FontWeight.w700),
                          ),
                        ),
                      ]),

                    ],
                  ),
                  width: 373.w,
                  height: 499.h,
                  decoration: BoxDecoration(
                      color: Colors.green[100],
                      borderRadius: BorderRadius.circular(20.r)),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}