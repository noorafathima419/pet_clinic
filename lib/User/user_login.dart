import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pet_clinic/User/User_homepage.dart';
import 'package:pet_clinic/User/User_navigationbar.dart';
import 'package:pet_clinic/User/User_signup.dart';
import 'package:shared_preferences/shared_preferences.dart';

class UserLogin extends StatefulWidget {
  const UserLogin({super.key});

  @override
  State<UserLogin> createState() => _UserLoginState();
}

class _UserLoginState extends State<UserLogin> {
  final form_key = GlobalKey<FormState>();
  var passowrdctrl = TextEditingController();
  var emailctrl = TextEditingController();
  String id = "";
  // Future<void> User_login() async {
  //   final user = await FirebaseFirestore.instance
  //       .collection("user_register")
  //       .where("email", isEqualTo: emailctrl.text)
  //       .where("password", isEqualTo: passowrdctrl.text)
  //       .get();
  //
  //   if (user.docs.isNotEmpty) {
  //     id = user.docs[0].id;
  //     print("$id");
  //     SharedPreferences userdata = await SharedPreferences.getInstance();
  //     userdata.setString("Userid", id);
  //     Navigator.push(context, MaterialPageRoute(
  //       builder: (context) {
  //         return NavigationBarUser();
  //       },
  //     ));
  //     print("done");
  //   } else {
  //     ScaffoldMessenger.of(context).showSnackBar(
  //       SnackBar(
  //         content: Text("invalid mail or password"),
  //         backgroundColor: Colors.black,
  //       ),
  //     );
  //   }
  // }

  final FirebaseAuth _auth = FirebaseAuth.instance;


  void loginUser() async {
    if (form_key.currentState!.validate()) {
      try {
        UserCredential userCredential =
        await FirebaseAuth.instance.signInWithEmailAndPassword(
          email: emailctrl.text,
          password: passowrdctrl.text,
        );

        if (userCredential.user != null) {
          // ✅ Get user's Firestore document
          final snapshot = await FirebaseFirestore.instance
              .collection("user_register")
              .where("email", isEqualTo: emailctrl.text)
              .get();

          if (snapshot.docs.isNotEmpty) {
            String userId = snapshot.docs[0].id;
            SharedPreferences prefs = await SharedPreferences.getInstance();
            await prefs.setString("login_id", userId); // ✅ Save Firestore ID

            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) =>NavigationBarUser ()),
            );
          } else {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text("User record not found in Firestore")),
            );
          }
        }
      } catch (e) {
        print("Login Error: $e");
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text("Error: $e"),
            backgroundColor: Colors.black,
          ),
        );
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Form(key: form_key,
          child: Container(
            child: ListView(children: [
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 170.h, left: 40.w),
                    child: Container(
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Padding(
                                    padding: EdgeInsets.only(left: 110.w),
                                    child: Text(
                                      "Login",
                                      style: GoogleFonts.inter(fontSize: 36.sp),
                                    ))
                              ],
                            ),
                            Center(
                                child: Padding(
                                  padding: EdgeInsets.only(
                                      top: 70.h, left: 10.w, right: 10.r),
                                  child: TextFormField(
                                      controller: emailctrl,
                                      validator: (value) {
                                        if (value!.isEmpty) {
                                          return "Empty password";
                                        }
                                        return null;
                                      },
                                      decoration: InputDecoration(
                                          hintText: 'Enter your email',
                                          hintStyle: GoogleFonts.hind(
                                              fontSize: 14.sp, color: Colors.grey),
                                          prefixIcon: Padding(
                                              padding: EdgeInsets.all(12.0),
                                              child: Icon(
                                                Icons.alternate_email_outlined,
                                                color: Colors.black,
                                              )),
                                          border: OutlineInputBorder(
                                            borderRadius: BorderRadius.circular(12),
                                            borderSide:
                                            BorderSide(color: Colors.black),
                                          ),
                                          enabledBorder: OutlineInputBorder(
                                            borderRadius: BorderRadius.circular(12),
                                            borderSide:
                                            BorderSide(color: Colors.black),
                                          ),
                                          focusedBorder: OutlineInputBorder(
                                            borderRadius: BorderRadius.circular(12),
                                            borderSide: BorderSide(
                                                color: Colors.black, width: 2),
                                          ))),
                                )),
                            Center(
                                child: Padding(
                                  padding: EdgeInsets.only(
                                      top: 70.h, left: 10.w, right: 10.r),
                                  child: TextFormField(
                                      controller: passowrdctrl,
                                      validator: (value) {
                                        if (value!.isEmpty) {
                                          return "Empty password";
                                        }
                                        return null;
                                      },
                                      decoration: InputDecoration(
                                          hintText: '*****',
                                          hintStyle: GoogleFonts.hind(
                                              fontSize: 14.sp, color: Colors.grey),
                                          // prefixIcon: Padding(
                                          //     padding: EdgeInsets.all(12.0),
                                          //     child: SvgPicture.Asset("")()),
                                          border: OutlineInputBorder(
                                            borderRadius: BorderRadius.circular(12),
                                            borderSide:
                                            BorderSide(color: Colors.black),
                                          ),
                                          enabledBorder: OutlineInputBorder(
                                            borderRadius: BorderRadius.circular(12),
                                            borderSide:
                                            BorderSide(color: Colors.black),
                                          ),
                                          focusedBorder: OutlineInputBorder(
                                            borderRadius: BorderRadius.circular(12),
                                            borderSide: BorderSide(
                                                color: Colors.black, width: 2),
                                          ))),
                                )),
                            Row(
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(left: 80.w, top: 50.h),
                                  child: InkWell(
                                    onTap: () {
                                      if (form_key.currentState!.validate()) {
                                        loginUser();
                                      }
                                    },
                                    child: Container(
                                      child: Center(
                                          child: Text(
                                            "LOGIN",
                                            style: GoogleFonts.hind(fontSize: 16.sp),
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
                            SizedBox(
                              height: 20.h,
                            ),
                            Text(
                              "Forget password",
                              style: GoogleFonts.hind(),
                            )
                          ],
                        ),
                        height: 501.h,
                        width: 339.w,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.sp),
                          color: Color(0xffF1DCDC),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(
                                  0.2.sp), // Shadow color with opacity
                              spreadRadius: 0.r, // How much the shadow spreads
                              blurRadius: 4.r, // Softness of the shadow
                              offset:
                              Offset(0, 4), // X and Y offset of the shadow
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
                      style:
                      GoogleFonts.hind(fontSize: 18.sp, color: Colors.black),
                    ),
                  ),
                  TextButton(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(
                          builder: (context) {
                            return UserSignup();
                          },
                        ));
                      },
                      child: Text(
                        "Sign up",
                        style:
                        GoogleFonts.inter(color: Colors.green, fontSize: 16.sp),
                      ))
                ],
              )
            ]),
          ),
        ));
  }
}