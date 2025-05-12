import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pet_clinic/Admin/Admin_doctor.dart';

class AdminviewDoctor extends StatefulWidget {
  const AdminviewDoctor({super.key, required this.id});
  final id;
  @override
  State<AdminviewDoctor> createState() => _AdminviewDoctorState();
}

class _AdminviewDoctorState extends State<AdminviewDoctor> {
  Future<void> select_accept() async {
    await FirebaseFirestore.instance
        .collection("Doctor_Register")
        .doc(widget.id)
        .update({"Status": 1});
    setState(() {});
  }

  Future<void> select_reject() async {
    await FirebaseFirestore.instance
        .collection("Doctor_Register")
        .doc(widget.id)
        .update({"Status": 2});
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff5CB15A),
        title: Padding(
          padding: EdgeInsets.only(left: 150.w),
          child: Text(
            "Doctors",
            style: GoogleFonts.poppins(
                fontWeight: FontWeight.w500, fontSize: 20.sp),
          ),
        ),
      ),
      body: FutureBuilder(
          future: FirebaseFirestore.instance
              .collection("Doctor_Register")
              .doc(widget.id)
              .get(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return Center(
                child: CircularProgressIndicator(),
              );
            }
            if (snapshot.hasError) {
              return Center(
                child: Text("User not found"),
              );
            }
            if (!snapshot.hasData || snapshot.data == null) {
              return Center(
                child: Text("No data founded"),
              );
            }
            final Doctordata = snapshot.data!.data() as Map<String, dynamic>;

            return ListView(children: [
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 20.w, top: 50.h),
                    child: Container(
                      child: Column(children: [
                        Row(
                          children: [
                            IconButton(
                                onPressed: () {
                                  Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) {
                                      return AdminDoctor();
                                    },
                                  ));
                                },
                                icon: Icon(Icons.arrow_back_ios_new_sharp))
                          ],
                        ),
                        Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              Padding(
                                  padding: EdgeInsets.only(left: 20.w),
                                  child: CircleAvatar(
                                    radius: 70.r,
                                    backgroundColor: Colors.brown[300],
                                    // backgroundImage: AssetImage(
                                    //     "assets/"),
                                  )),
                              Row(
                                children: [
                                  Padding(
                                    padding:
                                        EdgeInsets.only(left: 170.w, top: 2.h),
                                    child: Text(
                                      Doctordata["name"] ?? "no data found",
                                      style: GoogleFonts.poppins(
                                          fontSize: 18.sp,
                                          fontWeight: FontWeight.w600),
                                    ),
                                  )
                                ],
                              ),
                              Row(
                                children: [
                                  Padding(
                                    padding:
                                        EdgeInsets.only(top: 5.h, left: 40.w),
                                    child: Text(
                                      "Username",
                                      style: GoogleFonts.rubik(
                                          color: Colors.black,
                                          fontWeight: FontWeight.w300,
                                          fontSize: 18.sp),
                                    ),
                                  )
                                ],
                              ),
                              Row(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(left: 45.w),
                                    child: Container(
                                      child: Row(
                                        children: [
                                          Text(
                                            Doctordata["name"] ?? "no data",
                                            style: GoogleFonts.poppins(
                                                fontWeight: FontWeight.w300,
                                                color: Colors.grey),
                                          ),
                                        ],
                                      ),
                                      height: 41.h,
                                      width: 300.w,
                                      decoration: BoxDecoration(
                                          color: Color(0xffFFFFFF),
                                          borderRadius:
                                              BorderRadius.circular(8)),
                                    ),
                                  )
                                ],
                              ),
                              SizedBox(
                                height: 20.h,
                              ),
                              Row(
                                children: [
                                  Padding(
                                    padding:
                                        EdgeInsets.only(top: 5.h, left: 40.w),
                                    child: Text(
                                      "Phone number",
                                      style: GoogleFonts.rubik(
                                          color: Colors.black,
                                          fontWeight: FontWeight.w300,
                                          fontSize: 18.sp),
                                    ),
                                  )
                                ],
                              ),
                              Row(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(left: 45.w),
                                    child: Container(
                                        child: Text(
                                          Doctordata["number"] ?? "no data",
                                          style: GoogleFonts.rubik(
                                              fontWeight: FontWeight.w300,
                                              color: Colors.grey),
                                        ),
                                        height: 41.h,
                                        width: 300.w,
                                        decoration: BoxDecoration(
                                            color: Color(0xffFFFFFF),
                                            borderRadius:
                                                BorderRadius.circular(8))),
                                  )
                                ],
                              ),
                              SizedBox(
                                height: 20.h,
                              ),
                              Row(
                                children: [
                                  Padding(
                                    padding:
                                        EdgeInsets.only(top: 5.h, left: 40.w),
                                    child: Text(
                                      "Qualification",
                                      style: GoogleFonts.rubik(
                                          color: Colors.black,
                                          fontWeight: FontWeight.w300,
                                          fontSize: 18.sp),
                                    ),
                                  )
                                ],
                              ),
                              Row(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(left: 45.w),
                                    child: Container(
                                      child: Text(
                                        Doctordata["qualification"] ?? "",
                                        style: GoogleFonts.poppins(
                                            color: Colors.grey,
                                            fontWeight: FontWeight.w300),
                                      ),
                                      height: 41.h,
                                      width: 300.w,
                                      decoration: BoxDecoration(
                                          color: Color(0xffFFFFFF),
                                          borderRadius:
                                              BorderRadius.circular(8)),
                                    ),
                                  )
                                ],
                              ),
                              SizedBox(
                                height: 20.h,
                              ),
                              Row(
                                children: [
                                  Padding(
                                    padding:
                                        EdgeInsets.only(top: 5.h, left: 40.w),
                                    child: Text(
                                      "Work experience",
                                      style: GoogleFonts.rubik(
                                          color: Colors.black,
                                          fontWeight: FontWeight.w300,
                                          fontSize: 18.sp),
                                    ),
                                  )
                                ],
                              ),
                              Row(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(left: 45.w),
                                    child: Container(
                                      child: Text(
                                        Doctordata["experience"] ?? "",
                                        style: GoogleFonts.poppins(
                                            color: Colors.grey,
                                            fontWeight: FontWeight.w300),
                                      ),
                                      height: 41.h,
                                      width: 300.w,
                                      decoration: BoxDecoration(
                                          color: Color(0xffFFFFFF),
                                          borderRadius:
                                              BorderRadius.circular(8)),
                                    ),
                                  )
                                ],
                              ),
                              SizedBox(
                                height: 20.h,
                              ),
                              Row(
                                children: [
                                  Padding(
                                    padding:
                                        EdgeInsets.only(top: 5.h, left: 40.w),
                                    child: Text(
                                      "Email",
                                      style: GoogleFonts.rubik(
                                          color: Colors.black,
                                          fontWeight: FontWeight.w300,
                                          fontSize: 18.sp),
                                    ),
                                  )
                                ],
                              ),
                              Row(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(left: 45.w),
                                    child: Container(
                                      child: Row(
                                        children: [
                                          Text(
                                            Doctordata["email"] ?? "",
                                            style: GoogleFonts.poppins(
                                                color: Colors.grey,
                                                fontWeight: FontWeight.w300),
                                          ),
                                        ],
                                      ),
                                      height: 41.h,
                                      width: 300.w,
                                      decoration: BoxDecoration(
                                          color: Color(0xffFFFFFF),
                                          borderRadius:
                                              BorderRadius.circular(8)),
                                    ),
                                  )
                                ],
                              ),
                              SizedBox(
                                height: 20.h,
                              ),
                              Row(
                                children: [
                                  Padding(
                                    padding:
                                        EdgeInsets.only(top: 5.h, left: 40.w),
                                    child: Text(
                                      "Experience",
                                      style: GoogleFonts.rubik(
                                          color: Colors.black,
                                          fontWeight: FontWeight.w300,
                                          fontSize: 15.sp),
                                    ),
                                  )
                                ],
                              ),
                              Row(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(left: 45.w),
                                    child: Container(
                                        child: Row(
                                          children: [
                                            Text(
                                              Doctordata["experience"] ?? "",
                                              style: GoogleFonts.poppins(
                                                  color: Colors.grey,
                                                  fontWeight: FontWeight.w300),
                                            ),
                                          ],
                                        ),
                                        height: 41.h,
                                        width: 300.w,
                                        decoration: BoxDecoration(
                                            color: Color(0xffFFFFFF),
                                            borderRadius:
                                                BorderRadius.circular(10))),
                                  )
                                ],
                              ),
                              Doctordata["Status"] == 0
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
                                              width: 100.w,
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
                                                  width: 100.w,
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
                                    )
                                  : Doctordata["Status"] == 1
                                      ? Padding(
                                          padding: EdgeInsets.only(
                                              left: 30.w, top: 30.h),
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
                                            width: 100.w,
                                            height: 50.h,
                                            decoration: BoxDecoration(
                                                color: Color(0xff5CB15A),
                                                borderRadius:
                                                    BorderRadius.circular(5.r)),
                                          ),
                                        )
                                      : Padding(
                                          padding: EdgeInsets.only(
                                              left: 40.w, top: 10.h),
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
                                            width: 100.w,
                                            height: 50.h,
                                            decoration: BoxDecoration(
                                                color: Color(0xffCA1518),
                                                borderRadius:
                                                    BorderRadius.circular(5.r)),
                                          ),
                                        ),
                            ]),
                      ]),
                      height: 900.h,
                      width: 370.w,
                      decoration: BoxDecoration(
                          color: Color(0xffF0E4E4),
                          borderRadius: BorderRadius.circular(10.sp)),
                    ),
                  )
                ],
              ),
            ]);
          }),
    );
  }
}
