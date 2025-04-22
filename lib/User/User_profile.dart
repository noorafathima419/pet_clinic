import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shared_preferences/shared_preferences.dart';

class UserProfile extends StatefulWidget {
  const UserProfile({super.key});

  @override
  State<UserProfile> createState() => _UserProfileState();
}

class _UserProfileState extends State<UserProfile> {
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
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.green,
        leading: Icon(Icons.arrow_back_ios_new),
        title: Padding(
          padding: EdgeInsets.only(left: 90.w),
          child: Text(
            "User Profile",
            style: GoogleFonts.hind(fontSize: 18.sp, fontWeight: FontWeight.bold),
          ),
        ),
      ),
      body: FutureBuilder(future: FirebaseFirestore.instance
        .collection("user_register")
        .doc(id)
        .get(),
    builder: (context, snapshot) {
    if (snapshot.connectionState == ConnectionState.waiting) {
    return const Center(child: CircularProgressIndicator());
    }
    if (snapshot.hasError) {
    return Center(child: Text("user found"));
    }
    if (!snapshot.hasData || snapshot.data == null) {
    return Center(child: Text("no user data found"));
    }
    final user = snapshot.data!.data() as Map<String, dynamic>;
        return  Column(
          children: [
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 130.w, top: 30.h),
                  child: CircleAvatar(
                    child: Icon(
                      Icons.person,
                      size: 90.sp,
                      color: Colors.grey,
                    ),
                    radius: 70.r,
                  ),
                )
              ],
            ),
            Row(
              children: [
                SizedBox(
                  width: 140.w,
                ),
                Text(
                  user["name"] ?? "no data found",
                  style: GoogleFonts.hind(fontSize: 16.sp),
                )
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 30.w, top: 30.h),
                  child: Container(
                    child: Padding(
                      padding: EdgeInsets.only(left: 20.w, top: 20.h),
                      child: Text(
                        user["name"] ?? "no data found",
                        style:
                        GoogleFonts.hind(color: Colors.white, fontSize: 12.sp),
                      ),
                    ),
                    width: 320.w,
                    height: 56.h,
                    decoration: BoxDecoration(
                        color: Color(0xff5CB15A),
                        borderRadius: BorderRadius.circular(10.r)),
                  ),
                )
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 30.w, top: 30.h),
                  child: Container(
                    child: Padding(
                      padding: EdgeInsets.only(left: 20.w, top: 20.h),
                      child: Text(
                       user["number"] ?? "no data found",
                        style:
                        GoogleFonts.hind(color: Colors.white, fontSize: 12.sp),
                      ),
                    ),
                    width: 320.w,
                    height: 56.h,
                    decoration: BoxDecoration(
                        color: Color(0xff5CB15A),
                        borderRadius: BorderRadius.circular(10.r)),
                  ),
                )
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 30.w, top: 30.h),
                  child: Container(
                    child: Padding(
                      padding: EdgeInsets.only(left: 20.w, top: 20.h),
                      child: Text(
                       user["email"] ?? "no data found",
                        style:
                        GoogleFonts.hind(color: Colors.white, fontSize: 12.sp),
                      ),
                    ),
                    width: 320.w,
                    height: 56.h,
                    decoration: BoxDecoration(
                        color: Color(0xff5CB15A),
                        borderRadius: BorderRadius.circular(10.r)),
                  ),
                )
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 30.w, top: 30.h),
                  child: Container(
                    child: Padding(
                      padding: EdgeInsets.only(left: 20.w, top: 20.h),
                      child: Text(
                       user["location"] ?? "no data found",
                        style:
                        GoogleFonts.hind(color: Colors.white, fontSize: 12.sp),
                      ),
                    ),
                    width: 320.w,
                    height: 56.h,
                    decoration: BoxDecoration(
                        color: Color(0xff5CB15A),
                        borderRadius: BorderRadius.circular(10.r)),
                  ),
                )
              ],
            )
          ],
        );
    }
      )
    );
  }
}
