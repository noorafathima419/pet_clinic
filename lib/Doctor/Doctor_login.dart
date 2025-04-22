import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pet_clinic/Doctor/Doctor_Tapbar.dart';
import 'package:pet_clinic/Doctor/Doctor_signup.dart';
import 'package:pet_clinic/Doctor/Doctor_userDetails.dart';
import 'package:shared_preferences/shared_preferences.dart';

class DoctorLogin extends StatefulWidget {
  const DoctorLogin({super.key});

  @override
  State<DoctorLogin> createState() => _DoctorLoginState();
}

class _DoctorLoginState extends State<DoctorLogin> {
  final form_key = GlobalKey<FormState>();
  var passowrdctrl = TextEditingController();
  var Emailctrl = TextEditingController();
  String id = "";

  void doctor_login() async {
    final login = await FirebaseFirestore.instance
        .collection("Doctor_Register")
        .where("email", isEqualTo: Emailctrl.text)
        .where("password", isEqualTo: passowrdctrl.text)
        .get();

    if (login.docs.isNotEmpty) {
      id = login.docs[0].id;
      print("$id");
      SharedPreferences login_data = await SharedPreferences.getInstance();
      login_data.setString("login_id", id);
      Navigator.push(context, MaterialPageRoute(
        builder: (context) {
          return DoctorTapbar();
        },
      ));
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Invalid e-mail or password!'),
          backgroundColor: Colors.red,
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: ListView(children: [
          Form(
            key: form_key,
            child: Expanded(
              child: Container(
                child: Column(children: [
                  Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 170.h, left: 50.w),
                        child: Container(
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Padding(
                                        padding: EdgeInsets.only(left: 110.w),
                                        child: Text(
                                          "Login",
                                          style: GoogleFonts.inter(
                                              fontSize: 36.sp),
                                        ))
                                  ],
                                ),
                                Center(
                                    child: Padding(
                                  padding: EdgeInsets.only(
                                      top: 70.h, left: 10.w, right: 10.r),
                                  child: TextFormField(
                                      controller: Emailctrl,
                                      validator: (value) {
                                        if (value!.isEmpty) {
                                          return "Empty password";
                                        }
                                        return null;
                                      },
                                      decoration: InputDecoration(
                                          hintText: 'Enter your email',
                                          hintStyle: GoogleFonts.hind(
                                              fontSize: 14.sp,
                                              color: Colors.grey),
                                          prefixIcon: Padding(
                                              padding: EdgeInsets.all(12.0),
                                              child: Icon(
                                                Icons.alternate_email_outlined,
                                                color: Colors.black,
                                              )),
                                          border: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(12),
                                            borderSide:
                                                BorderSide(color: Colors.black),
                                          ),
                                          enabledBorder: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(12),
                                            borderSide:
                                                BorderSide(color: Colors.black),
                                          ),
                                          focusedBorder: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(12),
                                            borderSide: BorderSide(
                                                color: Colors.black, width: 2),
                                          ))),
                                )),
                                Center(
                                    child: Padding(
                                  padding: EdgeInsets.only(
                                      top: 70.h, left: 10.w, right: 10.r),
                                  child: TextFormField(controller: passowrdctrl,
                                      validator: (value) {
                                        if (value!.isEmpty) {
                                          return "Empty password";
                                        }
                                        return null;
                                      },
                                      decoration: InputDecoration(
                                          hintText: '*****',
                                          hintStyle: GoogleFonts.hind(
                                              fontSize: 14.sp,
                                              color: Colors.grey),
                                          // prefixIcon: Padding(
                                          //     padding: EdgeInsets.all(12.0),
                                          //     child: SvgPicture.Asset("")()),
                                          border: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(12),
                                            borderSide:
                                                BorderSide(color: Colors.black),
                                          ),
                                          enabledBorder: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(12),
                                            borderSide:
                                                BorderSide(color: Colors.black),
                                          ),
                                          focusedBorder: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(12),
                                            borderSide: BorderSide(
                                                color: Colors.black, width: 2),
                                          ))),
                                )),
                                Row(
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(
                                          left: 80.w, top: 50.h),
                                      child: InkWell(
                                        onTap: () {
                                          if (form_key.currentState!
                                              .validate()) {
                                            doctor_login();
                                          }
                                        },
                                        child: Container(
                                          child: Center(
                                              child: Text(
                                            "LOGIN",
                                            style: GoogleFonts.hind(
                                                fontSize: 16.sp),
                                          )),
                                          width: 166.w,
                                          height: 40.h,
                                          decoration: BoxDecoration(
                                              color: Color(0xff5CB15A),
                                              borderRadius:
                                                  BorderRadius.circular(10.sp)),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ],
                            ),
                            height: 500.h,
                            width: 325.w,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.r),
                              color: Color(0xffF0E4E4),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withOpacity(
                                      0.2), // Shadow color with opacity
                                  spreadRadius:
                                      0, // How much the shadow spreads
                                  blurRadius: 4, // Softness of the shadow
                                  offset: Offset(
                                      0, 4), // X and Y offset of the shadow
                                ),
                              ],
                            )),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 150.h,
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 90.w),
                        child: Text(
                          "Do you have account?",
                          style: GoogleFonts.hind(
                              fontSize: 18.sp, color: Colors.black),
                        ),
                      ),
                      TextButton(
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute(
                              builder: (context) {
                                return DoctorSignup();
                              },
                            ));
                          },
                          child: Text(
                            "Sign up",
                            style: GoogleFonts.inter(
                                color: Colors.green, fontSize: 16.sp),
                          ))
                    ],
                  )
                ]),
              ),
            ),
          ),
        ]));
  }
}
