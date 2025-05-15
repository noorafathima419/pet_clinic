import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shared_preferences/shared_preferences.dart';

class DoctorViewpetprofile extends StatefulWidget {
  const DoctorViewpetprofile({super.key});

  @override
  State<DoctorViewpetprofile> createState() => _DoctorViewpetprofileState();
}

class _DoctorViewpetprofileState extends State<DoctorViewpetprofile> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    login_id();
  }

  Future<void> login_id() async {
    SharedPreferences data1 = await SharedPreferences.getInstance();
    setState(() {
      id = data1.getString("login_id");
      print(id);
    });
  }

  var id;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green,
          leading: IconButton(
            icon: Icon(Icons.arrow_back, color: Colors.black),
            onPressed: () {
            },
          ),
          title: Padding(
            padding: EdgeInsets.only(left: 60),
            child: Text("Pet Profile", style: TextStyle(color: Colors.black)),
          ),
        ),
        body: FutureBuilder(
            future: FirebaseFirestore.instance
                .collection("pets_details")
                .doc(id)
                .get(),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return const Center(child: CircularProgressIndicator());
              }
              if (snapshot.hasError) {
                return Center(child: Text("user found"));
              }
              final data = snapshot.data!.data();
              if (data == null) {
                return Center(child: Text("User document is empty."));
              }

              final doct_data = data;
              return Column(
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 20.h, left: 30.w),
                        child: Card(
                          elevation: 3,
                          child: Container(
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(
                                          left: 120.w, top: 10.h),
                                      child: CircleAvatar(
                                        radius: 40.r,
                                      ),
                                    )
                                  ],
                                ),
                                Row(
                                  children: [
                                    Center(
                                        child: Padding(
                                            padding:
                                                EdgeInsets.only(left: 130.w),
                                            child: Text(
                                              doct_data["pet_name"] ??
                                                  "no data found",
                                            )))
                                  ],
                                ),
                                Row(children: [
                                  Padding(
                                    padding:
                                        EdgeInsets.only(left: 20.w, top: 20.h),
                                    child: Text(
                                      "BirthDate:",
                                      style: GoogleFonts.poppins(
                                          fontSize: 19.sp,
                                          fontWeight: FontWeight.w400),
                                    ),
                                  ),
                                  Padding(
                                    padding:
                                        EdgeInsets.only(left: 20.w, top: 20.h),
                                    child: Text(
                                      doct_data["birthday"] ?? "no data found",
                                      style: GoogleFonts.poppins(
                                          fontSize: 17.sp,
                                          fontWeight: FontWeight.w300),
                                    ),
                                  ),
                                ]),
                                Row(children: [
                                  Padding(
                                    padding:
                                        EdgeInsets.only(left: 20.w, top: 10.h),
                                    child: Text(
                                      "Colour:",
                                      style: GoogleFonts.poppins(
                                          fontSize: 19.sp,
                                          fontWeight: FontWeight.w400),
                                    ),
                                  ),
                                  Padding(
                                    padding:
                                        EdgeInsets.only(left: 50.w, top: 10.h),
                                    child: Text(
                                      doct_data["color"] ?? "no data found",
                                      style: GoogleFonts.poppins(
                                          fontSize: 17.sp,
                                          fontWeight: FontWeight.w300),
                                    ),
                                  ),
                                ]),
                                Row(children: [
                                  Padding(
                                    padding:
                                        EdgeInsets.only(left: 20.w, top: 10.h),
                                    child: Text(
                                      "Gender:",
                                      style: GoogleFonts.poppins(
                                          fontSize: 19.sp,
                                          fontWeight: FontWeight.w400),
                                    ),
                                  ),
                                  Padding(
                                    padding:
                                        EdgeInsets.only(left: 50.w, top: 10.h),
                                    child: Text(
                                      doct_data["gender"] ?? "no data found",
                                      style: GoogleFonts.poppins(
                                          fontSize: 17.sp,
                                          fontWeight: FontWeight.w300),
                                    ),
                                  ),
                                ]),
                                Row(children: [
                                  Padding(
                                    padding:
                                        EdgeInsets.only(left: 20.w, top: 10.h),
                                    child: Text(
                                      "Weight:",
                                      style: GoogleFonts.poppins(
                                          fontSize: 19.sp,
                                          fontWeight: FontWeight.w400),
                                    ),
                                  ),
                                  Padding(
                                    padding:
                                        EdgeInsets.only(left: 50.w, top: 10.h),
                                    child: Text(
                                      doct_data["weight"] ?? "no data found",
                                      style: GoogleFonts.poppins(
                                          fontSize: 17.sp,
                                          fontWeight: FontWeight.w300),
                                    ),
                                  ),
                                ]),
                              ],
                            ),
                            height: 300.h,
                            width: 350.w,
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              );
            }));
  }
}
