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
      required this.pet_name,
      required this.pet_type,
      required this.gender,
      required this.vaccination,
      required this.weight});
  final id;
  final owner_name;
  final pet_name;
  final pet_type;
  final gender;
  final vaccination;
  final weight;

  @override
  State<DoctorAppoinment> createState() => _DoctorAppoinmentState();
}

class _DoctorAppoinmentState extends State<DoctorAppoinment> {
  Future<void> select_accept() async {
    await FirebaseFirestore.instance
        .collection("Appoinment_details")
        .doc(widget.id)
        .update({"Status": 1});
    setState(() {});
  }

  Future<void> select_reject() async {
    await FirebaseFirestore.instance
        .collection("Appoinment_details")
        .doc(widget.id)
        .update({"Status": 2});
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          leading: IconButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return DoctorTapbar();
                }));
              },
              icon: Icon(Icons.arrow_back_ios_new))),
      body: FutureBuilder(
          future: FirebaseFirestore.instance
              .collection("Appoinment_details")
              .doc(widget.id)
              .get(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return Center(child: CircularProgressIndicator());
            }
            if (snapshot.hasError) {
              return Center(child: Text("User not found"));
            }
            if (!snapshot.hasData || snapshot.data == null) {
              return Center(child: Text("No data found"));
            }
            final appoinment_datas =
            snapshot.data!.data() as Map<String, dynamic>;
            return Column(children: [
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 20.w, top: 100.h),
                    child: Container(
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(left: 20.w, top: 30.h),
                                child: Text(
                                  "Username:",
                                  style: GoogleFonts.poppins(
                                      fontSize: 19.sp,
                                      fontWeight: FontWeight.w400),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 20.w, top: 30.h),
                                child: Text(
                                  "${widget.owner_name}",
                                  style: GoogleFonts.poppins(
                                      fontSize: 17.sp,
                                      fontWeight: FontWeight.w700),
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
                                    fontSize: 19.sp,
                                    fontWeight: FontWeight.w400),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 30.w, top: 30.h),
                              child: Text(
                                "${widget.pet_name}",
                                style: GoogleFonts.poppins(
                                    fontSize: 17.sp,
                                    fontWeight: FontWeight.w700),
                              ),
                            ),
                          ]),
                          Row(children: [
                            Padding(
                              padding: EdgeInsets.only(left: 20.w, top: 30.h),
                              child: Text(
                                "Pet type:",
                                style: GoogleFonts.poppins(
                                    fontSize: 19.sp,
                                    fontWeight: FontWeight.w400),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 30.w, top: 30.h),
                              child: Text(
                                "${widget.pet_type}",
                                style: GoogleFonts.poppins(
                                    fontSize: 17.sp,
                                    fontWeight: FontWeight.w700),
                              ),
                            ),
                          ]),
                          Row(children: [
                            Padding(
                              padding: EdgeInsets.only(left: 20.w, top: 30.h),
                              child: Text(
                                "Gender:",
                                style: GoogleFonts.poppins(
                                    fontSize: 19.sp,
                                    fontWeight: FontWeight.w400),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 20.w, top: 30.h),
                              child: Text(
                                "${widget.gender}",
                                style: GoogleFonts.poppins(
                                    fontSize: 17.sp,
                                    fontWeight: FontWeight.w700),
                              ),
                            ),
                          ]),
                          Row(children: [
                            Padding(
                              padding: EdgeInsets.only(left: 20.w, top: 30.h),
                              child: Text(
                                "Vaccination:",
                                style: GoogleFonts.poppins(
                                    fontSize: 19.sp,
                                    fontWeight: FontWeight.w400),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 10.w, top: 30.h),
                              child: Text(
                                "${widget.vaccination}",
                                style: GoogleFonts.poppins(
                                    fontSize: 17.sp,
                                    fontWeight: FontWeight.w700),
                              ),
                            ),
                          ]),
                          Row(children: [
                            Padding(
                              padding: EdgeInsets.only(left: 20.w, top: 30.h),
                              child: Text(
                                "Dose:",
                                style: GoogleFonts.poppins(
                                    fontSize: 19.sp,
                                    fontWeight: FontWeight.w400),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 30.w, top: 30.h),
                              child: Text(
                                "Dose",
                                style: GoogleFonts.poppins(
                                    fontSize: 17.sp,
                                    fontWeight: FontWeight.w700),
                              ),
                            ),
                          ]),
                          Row(children: [
                            Padding(
                              padding: EdgeInsets.only(left: 20.w, top: 30.h),
                              child: Text(
                                "Weight:",
                                style: GoogleFonts.poppins(
                                    fontSize: 19.sp,
                                    fontWeight: FontWeight.w400),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 30.w, top: 30.h),
                              child: Text(
                                "${widget.weight}",
                                style: GoogleFonts.poppins(
                                    fontSize: 17.sp,
                                    fontWeight: FontWeight.w700),
                              ),
                            ),
                          ]),
                          appoinment_datas["Status"] == 0
                              ? Row(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(
                                    left: 40.w, top: 150.h),
                                child: InkWell(
                                  onTap: () {
                                    select_accept();
                                  },
                                  child: Container(
                                    child: Center(
                                      child: Text(
                                        "Accept",
                                        style: GoogleFonts.poppins(
                                            color: Colors.white,
                                            fontWeight:
                                            FontWeight.w600,
                                            fontSize: 18.sp),
                                      ),
                                    ),
                                    width: 142.w,
                                    height: 50.h,
                                    decoration: BoxDecoration(
                                        color: Color(0xff73ABFF),
                                        borderRadius:
                                        BorderRadius.circular(
                                            5.r)),
                                  ),
                                ),
                              ),
                              Row(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(
                                        left: 10.w, top: 150.h),
                                    child: InkWell(
                                      onTap: () {
                                        select_reject();
                                      },
                                      child: Container(
                                        child: Center(
                                          child: Text(
                                            "reject",
                                            style:
                                            GoogleFonts.poppins(
                                                color:
                                                Colors.white,
                                                fontWeight:
                                                FontWeight
                                                    .w600,
                                                fontSize: 18.sp),
                                          ),
                                        ),
                                        width: 142.w,
                                        height: 50.h,
                                        decoration: BoxDecoration(
                                            color: Color(0xffFF9F9D),
                                            borderRadius:
                                            BorderRadius.circular(
                                                5.r)),
                                      ),
                                    ),
                                  )
                                ],
                              )
                            ],
                          ) : appoinment_datas["Status"] == 1
                              ? Padding(
                            padding: EdgeInsets.only(
                                left: 40.w, top: 150.h),
                            child: Container(
                              child: Center(
                                child: Text(
                                  "Accepted",
                                  style: GoogleFonts.poppins(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w600,
                                      fontSize: 18.sp),
                                ),
                              ),
                              width: 142.w,
                              height: 50.h,
                              decoration: BoxDecoration(
                                  color: Colors.green,
                                  borderRadius:
                                  BorderRadius.circular(5.r)),
                            ),
                          ) : Padding(
                            padding: EdgeInsets.only(
                                left: 40.w, top: 150.h),
                            child: Container(
                              child: Center(
                                child: Text(
                                  "Rejected",
                                  style: GoogleFonts.poppins(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w600,
                                      fontSize: 18.sp),
                                ),
                              ),
                              width: 142.w,
                              height: 50.h,
                              decoration: BoxDecoration(
                                  color: Colors.red,
                                  borderRadius:
                                  BorderRadius.circular(5.r)),
                            ),
                          ),
                        ],
                      ),
                      width: 370.w,
                      height: 620.h,
                      decoration: BoxDecoration(
                          color: Colors.green[100],
                          borderRadius: BorderRadius.circular(20.r)),
                    ),
                  )
                ],
              ),
            ]);
          }),
    );
  }
}