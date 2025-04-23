import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pet_clinic/Doctor/Doctor_Tapbar.dart';

class DoctorNotification extends StatefulWidget {
  const DoctorNotification({super.key});

  @override
  State<DoctorNotification> createState() => _DoctorNotificationState();
}

class _DoctorNotificationState extends State<DoctorNotification> {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<QuerySnapshot>(
      future: FirebaseFirestore.instance.collection("admin_notification").get(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(child: CircularProgressIndicator());
        }
        if (snapshot.hasError) {
          return const Center(child: Text("An error occurred"));
        }
        if (!snapshot.hasData || snapshot.data!.docs.isEmpty) {
          return const Center(child: Text("No notifications found"));
        }

        final data = snapshot.data!.docs;
        return Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.green,
            leading: IconButton(
              icon: Icon(Icons.arrow_back, color: Colors.black),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return DoctorTapbar();
                },));
              },
            ),
            title: Padding(
              padding: EdgeInsets.only(left: 50.w),
              child: Text("Doctor Notification",
                  style: TextStyle(color: Colors.black)),
            ),
          ),
          backgroundColor: Color(0xffFFFFFF),
          body: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
            child: ListView.builder(
              itemCount: data.length,
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
                          data[index]["Heading"],
                          style: GoogleFonts.poppins(
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        subtitle: Padding(
                          padding: EdgeInsets.only(top: 100.h),
                          child: Text(
                            data[index]["Date"],
                            style: GoogleFonts.poppins(
                              fontSize: 14.sp,
                              color: Colors.grey[700],
                            ),
                          ),
                        ),
                        trailing: Text(
                          data[index]["Time"],
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
      },
    );
  }
}
