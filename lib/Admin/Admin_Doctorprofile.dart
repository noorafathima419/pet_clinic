import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class AdminDoctorprofile extends StatefulWidget {
  const AdminDoctorprofile({super.key});

  @override
  State<AdminDoctorprofile> createState() => _AdminDoctorprofileState();
}

class _AdminDoctorprofileState extends State<AdminDoctorprofile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff5CB15A),
        title: Padding(
          padding:  EdgeInsets.only(left: 150.h),
          child: Text(
            "Doctors",
            style:
            GoogleFonts.poppins(fontWeight: FontWeight.w500, fontSize: 20.sp),
          ),
        ),
      ),
      body: Column(children: [
        Row(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 30.h, left: 50.w),
              child: Container(
                  child: ListView(children: [
                    Column(
                      children: [
                        CircleAvatar(
                          radius: 40.r,
                        ),
                        Row(
                          children: [
                            Padding(
                              padding:  EdgeInsets.only(left: 125.w),
                              child: Text(
                                "User name",
                                style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.w500, fontSize: 15.sp),
                              ),
                            )
                          ],
                        ),
                        Row(
                          children: [
                            Padding(
                              padding:  EdgeInsets.only(left: 135.w),
                              child: Text(
                                "Location",
                                style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.w500, fontSize: 15),
                              ),
                            )
                          ],
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 30, top: 30),
                              child: Text(
                                "User name",
                                style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.w500, fontSize: 15),
                              ),
                            )
                          ],
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: 10),
                              child: Container(
                                child: Row(
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(left: 10),
                                    ),
                                    SizedBox(
                                      height: 80,
                                      width: 300,
                                      child: Row(
                                        children: [
                                          Expanded(
                                            child: TextFormField(
                                              decoration: InputDecoration(
                                                // Adjust padding inside field
                                                border: OutlineInputBorder(
                                                  borderRadius:
                                                  BorderRadius.circular(15),
                                                ),
                                                prefixIconColor:
                                                Color(0xffE5E5E5),
                                                suffixIconColor:
                                                Color(0xffE5E5E5),
                                                hintText: "user name",
                                                filled: false,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
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
                              padding: const EdgeInsets.only(left: 30),
                              child: Text(
                                "Phone number",
                                style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.w500, fontSize: 15),
                              ),
                            )
                          ],
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: 10),
                              child: Container(
                                child: Row(
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(left: 10),
                                    ),
                                    SizedBox(
                                      height: 80,
                                      width: 300,
                                      child: Row(
                                        children: [
                                          Expanded(
                                            child: TextFormField(
                                              decoration: InputDecoration(
                                                // Adjust padding inside field
                                                border: OutlineInputBorder(
                                                  borderRadius:
                                                  BorderRadius.circular(15),
                                                ),
                                                prefixIconColor:
                                                Color(0xffE5E5E5),
                                                suffixIconColor:
                                                Color(0xffE5E5E5),
                                                hintText: "000000000",
                                                filled: false,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
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
                              padding: const EdgeInsets.only(left: 30),
                              child: Text(
                                "Eamil",
                                style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.w500, fontSize: 15),
                              ),
                            )
                          ],
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: 10),
                              child: Container(
                                child: Row(
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(left: 10),
                                    ),
                                    SizedBox(
                                      height: 80,
                                      width: 300,
                                      child: Row(
                                        children: [
                                          Expanded(
                                            child: TextFormField(
                                              decoration: InputDecoration(
                                                // Adjust padding inside field
                                                border: OutlineInputBorder(
                                                  borderRadius:
                                                  BorderRadius.circular(15),
                                                ),
                                                prefixIconColor:
                                                Color(0xffE5E5E5),
                                                suffixIconColor:
                                                Color(0xffE5E5E5),
                                                hintText: "Email",
                                                filled: false,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
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
                              padding: const EdgeInsets.only(left: 30),
                              child: Text(
                                "Qualification",
                                style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.w500, fontSize: 15),
                              ),
                            )
                          ],
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: 10),
                              child: Container(
                                child: Row(
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(left: 10),
                                    ),
                                    SizedBox(
                                      height: 80,
                                      width: 300,
                                      child: Row(
                                        children: [
                                          Expanded(
                                            child: TextFormField(
                                              decoration: InputDecoration(
                                                // Adjust padding inside field
                                                border: OutlineInputBorder(
                                                  borderRadius:
                                                  BorderRadius.circular(15),
                                                ),
                                                prefixIconColor:
                                                Color(0xffE5E5E5),
                                                suffixIconColor:
                                                Color(0xffE5E5E5),
                                                hintText: "phd",
                                                filled: false,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
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
                              padding: const EdgeInsets.only(left: 30),
                              child: Text(
                                "Experiance",
                                style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.w500, fontSize: 15),
                              ),
                            )
                          ],
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: 10),
                              child: Container(
                                child: Row(
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(left: 10),
                                    ),
                                    SizedBox(
                                      height: 80,
                                      width: 300,
                                      child: Row(
                                        children: [
                                          Expanded(
                                            child: TextFormField(
                                              decoration: InputDecoration(
                                                // Adjust padding inside field
                                                border: OutlineInputBorder(
                                                  borderRadius:
                                                  BorderRadius.circular(15),
                                                ),
                                                prefixIconColor:
                                                Color(0xffE5E5E5),
                                                suffixIconColor:
                                                Color(0xffE5E5E5),
                                                hintText: "3 year",
                                                filled: false,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
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
                              padding: const EdgeInsets.only(left: 30, top: 40),
                              child: Container(
                                child: Padding(
                                  padding:
                                  const EdgeInsets.only(top: 5, left: 20),
                                  child: Text(
                                    "Accept",
                                    style: GoogleFonts.poppins(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w500,
                                        fontSize: 20),
                                  ),
                                ),
                                height: 40,
                                width: 130,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                    color: Colors.lightGreen),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 10,top: 40),
                              child: Container(
                                child: Padding(
                                  padding:
                                  const EdgeInsets.only(top: 5, left: 20),
                                  child: Text(
                                    "Reject",
                                    style: GoogleFonts.poppins(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w500,
                                        fontSize: 20),
                                  ),
                                ),
                                height: 40,
                                width: 130,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                    color: Colors.red),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ]),
                  height: 720,
                  width: 325,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color(0xffF0E4E4),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black
                            .withOpacity(0.2), // Shadow color with opacity
                        spreadRadius: 0, // How much the shadow spreads
                        blurRadius: 4, // Softness of the shadow
                        offset: Offset(0, 4), // X and Y offset of the shadow
                      ),
                    ],
                  )),
            )
          ],
        ),
      ]),
    );
  }
}