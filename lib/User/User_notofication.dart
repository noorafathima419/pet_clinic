import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class UserNotofication extends StatefulWidget {
  const UserNotofication({super.key});

  @override
  State<UserNotofication> createState() => _UserNotoficationState();
}

class _UserNotoficationState extends State<UserNotofication> {
  @override
  Widget build(BuildContext context) {
    return  FutureBuilder(future: FirebaseFirestore.instance.collection("admin_notification").doc().get(),
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
    return Scaffold(
      backgroundColor: Color(0xffFFFFFF),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
        child: ListView.builder(
          itemCount: user.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: EdgeInsets.only(bottom: 10.h),
              child: Container(
                height: 200.h,
                width: 200.w,
                child: Card(
                  elevation: 3,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.r),
                  ),
                  child: ListTile(
                    title: Text(
                      "Notification",
                      style: GoogleFonts.poppins(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    subtitle: Padding(
                      padding:  EdgeInsets.only(top: 100.h),
                      child: Text(
                        user[index]["Date"],
                        style: GoogleFonts.poppins(
                          fontSize: 14.sp,
                          color: Colors.grey[700],
                        ),
                      ),
                    ),
                    trailing: Text(
                      user[index]["Time"],
                      style: GoogleFonts.poppins(
                        fontSize: 14.sp,
                        color: Colors.grey[700],
                      ),
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
    }
    );
  }
}