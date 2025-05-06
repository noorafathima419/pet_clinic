import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pet_clinic/Doctor/Doctor_Tapbar.dart';

class DoctorAppoinment extends StatefulWidget {
  const DoctorAppoinment(
      {super.key,
      required this.id,
      required this.owner_name,
      required this.name,
      required this.pet_type,
      required this.gender});
  final id;
  final owner_name;
  final name;
  final pet_type;
  final gender;

  @override
  State<DoctorAppoinment> createState() => _DoctorAppoinmentState();
}

class _DoctorAppoinmentState extends State<DoctorAppoinment> {
  Future<void> select_accept() async {
    FirebaseFirestore.instance
        .collection("Appoinment_details")
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
          leading: IconButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) {
                    return DoctorTapbar();
                  },
                ));
              },
              icon: Icon(Icons.arrow_back_ios_new))),
      body: Column(
        children: [
          Row(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 20.w, top: 100.h),
                child: Container(
                  child: Column(children: [
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 20.w, top: 30.h),
                          child: Text(
                            "Username:",
                            style: GoogleFonts.poppins(
                                fontSize: 19.sp, fontWeight: FontWeight.w400),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 20.w, top: 30.h),
                          child: Text(
                            "${widget.owner_name}",
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
                          "Petname:",
                          style: GoogleFonts.poppins(
                              fontSize: 19.sp, fontWeight: FontWeight.w400),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 30.w, top: 30.h),
                        child: Text(
                          "${widget.name}",
                          style: GoogleFonts.poppins(
                              fontSize: 17.sp, fontWeight: FontWeight.w700),
                        ),
                      ),
                    ]),
                    Row(children: [
                      Padding(
                        padding: EdgeInsets.only(left: 20.w, top: 30.h),
                        child: Text(
                          "Pet type:",
                          style: GoogleFonts.poppins(
                              fontSize: 19.sp, fontWeight: FontWeight.w400),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 30.w, top: 30.h),
                        child: Text(
                          "${widget.pet_type}",
                          style: GoogleFonts.poppins(
                              fontSize: 17.sp, fontWeight: FontWeight.w700),
                        ),
                      ),
                    ]),
                    Row(children: [
                      Padding(
                        padding: EdgeInsets.only(left: 20.w, top: 30.h),
                        child: Text(
                          "Gender:",
                          style: GoogleFonts.poppins(
                              fontSize: 19.sp, fontWeight: FontWeight.w400),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 20.w, top: 30.h),
                        child: Text(
                          "${widget.gender}",
                          style: GoogleFonts.poppins(
                              fontSize: 17.sp, fontWeight: FontWeight.w700),
                        ),
                      ),
                    ]),
                    Row(children: [
                      Padding(
                        padding: EdgeInsets.only(left: 20.w, top: 30.h),
                        child: Text(
                          "Vaccination:",
                          style: GoogleFonts.poppins(
                              fontSize: 19.sp, fontWeight: FontWeight.w400),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 10.w, top: 30.h),
                        child: Text(
                          "vaccination",
                          style: GoogleFonts.poppins(
                              fontSize: 17.sp, fontWeight: FontWeight.w700),
                        ),
                      ),
                    ]),
                    Row(children: [
                      Padding(
                        padding: EdgeInsets.only(left: 20.w, top: 30.h),
                        child: Text(
                          "Dose:",
                          style: GoogleFonts.poppins(
                              fontSize: 19.sp, fontWeight: FontWeight.w400),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 30.w, top: 30.h),
                        child: Text(
                          "Dose",
                          style: GoogleFonts.poppins(
                              fontSize: 17.sp, fontWeight: FontWeight.w700),
                        ),
                      ),
                    ]),
                    Row(children: [
                      Padding(
                        padding: EdgeInsets.only(left: 20.w, top: 30.h),
                        child: Text(
                          "Weight:",
                          style: GoogleFonts.poppins(
                              fontSize: 19.sp, fontWeight: FontWeight.w400),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 30.w, top: 30.h),
                        child: Text(
                          "Weight",
                          style: GoogleFonts.poppins(
                              fontSize: 17.sp, fontWeight: FontWeight.w700),
                        ),
                      ),
                    ]),
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 10.h, left: 50.w),
                          child: Container(
                            child: Center(
                              child: Text(
                                "Reject",
                                style: GoogleFonts.rubik(
                                    color: Colors.white, fontSize: 18.sp),
                              ),
                            ),
                            width: 130.w,
                            height: 50.h,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.red),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 10.h, left: 30.w),
                          child: Container(
                            child: Center(
                              child: Text(
                                "Accept",
                                style: GoogleFonts.rubik(
                                    color: Colors.white, fontSize: 18.sp),
                              ),
                            ),
                            width: 130.w,
                            height: 50.h,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.green),
                          ),
                        )
                      ],
                    )
                  ]),
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
