import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pet_clinic/Doctor/Doctor_login.dart';

class DoctorSignup extends StatefulWidget {
  const DoctorSignup({super.key});

  @override
  State<DoctorSignup> createState() => _DoctorSignupState();
}

class _DoctorSignupState extends State<DoctorSignup> {
  final form_key = GlobalKey<FormState>();
  TextEditingController namectrl = TextEditingController();
  TextEditingController numberctrl = TextEditingController();
  TextEditingController experiencectrl =TextEditingController();
  TextEditingController qualification = TextEditingController();
  TextEditingController emailctrl = TextEditingController();
  TextEditingController passwordctrl = TextEditingController();


  Future<void> doctor() async {
    FirebaseFirestore.instance.collection("Doctor_Register").add({
      "name": namectrl.text,
      "number": numberctrl.text,
      "experience":experiencectrl,
      "qualification":qualification,
      "email": emailctrl.text,
      "password": passwordctrl.text,

      "Status": 0,
      "profile_path":
      "https://images.pexels.com/photos/213780/pexels-photo-213780.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500"
    });
    print("Success");
    Navigator.push(context, MaterialPageRoute(
      builder: (context) {
        return DoctorLogin();
      },
    ));
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(appBar: AppBar(
      backgroundColor: Colors.white,
      leading: Icon(Icons.arrow_back_ios_new),
    ),
        backgroundColor: Color(0xffFFFFFF),
        body: ListView(children: [
          Column(
            children: [
              Center(
                  child: Text(
                    "Sign up",
                    style: GoogleFonts.hind(fontSize: 36.sp),
                  )),
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 80.w),
                    child: Text(
                      "Create an account to get all features",
                      style: GoogleFonts.hind(
                          fontSize: 14.sp, color: Color(0xff999999)),
                    ),
                  )
                ],
              ),
              Padding(
                padding: EdgeInsets.only(top: 30.h, left: 10.w),
                child: Container(
                  child: Container(
                      child: Column(
                        children: [
                          Row(
                            children: [
                              SizedBox(
                                width: 10.w,
                              ),
                              Text(
                                "user name",
                                style: GoogleFonts.rubik(
                                    fontSize: 14.sp, fontWeight: FontWeight.w500),
                              )
                            ],
                          ),
                          Center(
                              child: Padding(
                                padding:
                                EdgeInsets.only( left: 10.w, right: 10.r),
                                child: TextFormField(controller: namectrl,
                                    validator: (value) {
                                      if (value!.isEmpty) {
                                        return "Empty name";
                                      }
                                      return null;
                                    },
                                    decoration: InputDecoration(
                                        hintText: 'Enter your username',
                                        hintStyle: GoogleFonts.hind(
                                            fontSize: 14.sp, color: Colors.grey),
                                        border: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(12.r),
                                          borderSide:
                                          BorderSide(color: Colors.black),
                                        ),
                                        enabledBorder: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(12.r),
                                          borderSide:
                                          BorderSide(color: Colors.black),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(12.r),
                                          borderSide: BorderSide(
                                              color: Colors.black, width: 2.w),
                                        ))),
                              )),
                          Row(
                            children: [
                              SizedBox(
                                width: 10.w,
                              ),
                              Text(
                                "Contact number",
                                style: GoogleFonts.rubik(
                                    fontSize: 14.sp, fontWeight: FontWeight.w500),
                              )
                            ],
                          ),
                          Center(
                              child: Padding(
                                padding:
                                EdgeInsets.only(top: 10.h, left: 10.w, right: 10.r),
                                child: TextFormField(controller: numberctrl,
                                    validator: (value) {
                                      if (value!.isEmpty) {
                                        return "Empty number";
                                      }
                                      return null;
                                    },
                                    decoration: InputDecoration(
                                        hintText: 'Enter your number',
                                        hintStyle: GoogleFonts.hind(
                                            fontSize: 14.sp, color: Colors.grey),
                                        border: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(12.r),
                                          borderSide:
                                          BorderSide(color: Colors.black),
                                        ),
                                        enabledBorder: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(12.r),
                                          borderSide:
                                          BorderSide(color: Colors.black),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(12.r),
                                          borderSide: BorderSide(
                                              color: Colors.black, width: 2.w),
                                        ))),
                              )),
                          Row(
                            children: [
                              SizedBox(
                                width: 10.w,
                              ),
                              Text(
                                "Experience",
                                style: GoogleFonts.rubik(
                                    fontSize: 14, fontWeight: FontWeight.w500),
                              )
                            ],
                          ),
                          Center(
                              child: Padding(
                                padding:
                                EdgeInsets.only(top: 10.h, left: 10.w, right: 10.r),
                                child: TextFormField(controller: experiencectrl,
                                    validator: (value) {
                                      if (value!.isEmpty) {
                                        return "Empty experience";
                                      }
                                      return null;
                                    },
                                    decoration: InputDecoration(
                                        hintText: 'Enter your experience',
                                        hintStyle: GoogleFonts.hind(
                                            fontSize: 14.sp, color: Colors.grey),
                                        border: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(12.r),
                                          borderSide:
                                          BorderSide(color: Colors.black),
                                        ),
                                        enabledBorder: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(12.r),
                                          borderSide:
                                          BorderSide(color: Colors.black),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(12.r),
                                          borderSide: BorderSide(
                                              color: Colors.black, width: 2.w),
                                        ))),
                              )),
                          Row(
                            children: [
                              SizedBox(
                                width: 10.w,
                              ),
                              Text(
                                "Qualification",
                                style: GoogleFonts.rubik(
                                    fontSize: 14.sp, fontWeight: FontWeight.w500),
                              )
                            ],
                          ),
                          Center(
                              child: Padding(
                                padding:
                                EdgeInsets.only(top: 10.h, left: 10.w, right: 10.r),
                                child: TextFormField(controller: qualification,
                                    validator: (value) {
                                      if (value!.isEmpty) {
                                        return "Empty qualification";
                                      }
                                      return null;
                                    },
                                    decoration: InputDecoration(
                                        hintText: 'Enter your qualification',
                                        hintStyle: GoogleFonts.hind(
                                            fontSize: 14.sp, color: Colors.grey),
                                        border: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(12.r),
                                          borderSide:
                                          BorderSide(color: Colors.black),
                                        ),
                                        enabledBorder: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(12.r),
                                          borderSide:
                                          BorderSide(color: Colors.black),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(12.r),
                                          borderSide: BorderSide(
                                              color: Colors.black, width: 2.w),
                                        ))),
                              )),
                          Row(
                            children: [
                              SizedBox(
                                width: 10.w,
                              ),
                              Text(
                                "Email",
                                style: GoogleFonts.rubik(
                                    fontSize: 14.sp, fontWeight: FontWeight.w500),
                              )
                            ],
                          ), Center(
                              child: Padding(
                                padding:
                                EdgeInsets.only(top: 10.h, left: 10.w, right: 10.r),
                                child: TextFormField(controller: emailctrl,
                                    validator: (value) {
                                      if (value!.isEmpty) {
                                        return "Empty qualification";
                                      }
                                      return null;
                                    },
                                    decoration: InputDecoration(
                                        hintText: 'Enter your email',
                                        hintStyle: GoogleFonts.hind(
                                            fontSize: 14.sp, color: Colors.grey),
                                        border: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(12.r),
                                          borderSide:
                                          BorderSide(color: Colors.black),
                                        ),
                                        enabledBorder: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(12.r),
                                          borderSide:
                                          BorderSide(color: Colors.black),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(12.r),
                                          borderSide: BorderSide(
                                              color: Colors.black, width: 2.w),
                                        ))),
                              )),
                          Row(
                            children: [
                              SizedBox(
                                width: 10.w,
                              ),
                              Text(
                                "Password",
                                style: GoogleFonts.rubik(
                                    fontSize: 14.sp, fontWeight: FontWeight.w500),
                              )
                            ],
                          ),
                          Center(
                              child: Padding(
                                padding:
                                EdgeInsets.only(top: 10.h, left: 10.w, right: 10.r),
                                child: TextFormField(controller: passwordctrl,
                                    validator: (value) {
                                      if (value!.isEmpty) {
                                        return "Empty password";
                                      }
                                      return null;
                                    },
                                    decoration: InputDecoration(
                                        hintText: 'Enter your password',
                                        hintStyle: GoogleFonts.hind(
                                            fontSize: 14.sp, color: Colors.grey),
                                        border: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(12.r),
                                          borderSide:
                                          BorderSide(color: Colors.black),
                                        ),
                                        enabledBorder: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(12.r),
                                          borderSide:
                                          BorderSide(color: Colors.black),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(12.r),
                                          borderSide: BorderSide(
                                              color: Colors.black, width: 2.w),
                                        ))),
                              )),Row(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(left: 80.w, top: 10.h),
                                child: InkWell(onTap: () {
                                  doctor();
                                },
                                  child: Container(
                                    child: Center(
                                        child: Text(
                                          "REGISTER",
                                          style: GoogleFonts.hind(fontSize: 16.sp),
                                        )),
                                    width: 166.w,
                                    height: 40.h,
                                    decoration: BoxDecoration(
                                        color: Color(0xff5CB15A),
                                        borderRadius:
                                        BorderRadius.circular(10.r)),
                                  ),
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                      height: 630.h,
                      width: 325.w,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.r),
                        color: Color(0xffF0E4E4),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black
                                .withOpacity(0.2), // Shadow color with opacity
                            spreadRadius: 0.r, // How much the shadow spreads
                            blurRadius: 4.r, // Softness of the shadow
                            offset:
                            Offset(0, 4), // X and Y offset of the shadow
                          ),
                        ],
                      )),
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 70.w),
                    child: Text(
                      "Already have an account? ",
                      style:
                      GoogleFonts.rubik(fontSize: 16.sp, color: Colors.black),
                    ),
                  ),
                  TextButton(onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) {
                      return DoctorLogin();
                    },));
                  }, child: Text("Login"))
                ],
              )
            ],
          ),
        ]));
  }
}