import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class AddVaccination extends StatefulWidget {
  const AddVaccination({super.key});

  @override
  State<AddVaccination> createState() => _AddVaccinationState();
}

class _AddVaccinationState extends State<AddVaccination> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: 4,
              itemBuilder: (context, index) {
                return Padding(
                  padding: EdgeInsets.only(left: 30.w, right: 30.w),
                  child: Card(
                    elevation: 3,
                    margin: EdgeInsets.symmetric(vertical: 10),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    child: Container(
                      padding: EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        color: Color(0xffCF6A6AF0E4E4),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Row(
                        children: [
                          Container(
                            height: 50.w,
                            width: 50.w,
                            decoration: BoxDecoration(
                              shape: BoxShape.rectangle,
                              color: Colors.grey[400],
                            ),
                            child: Icon(Icons.person,
                                size: 40.sp, color: Colors.white),
                          ),
                          SizedBox(width: 16.w),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("User name",
                                    style: GoogleFonts.inter(
                                        fontSize: 16.sp,
                                        fontWeight: FontWeight.w600)),
                                Text("pet name",
                                    style: GoogleFonts.inter(
                                        fontSize: 14.sp,
                                        color: Colors.black,
                                        fontWeight: FontWeight.w600)),
                                Text(
                                  "pet type",
                                  style: GoogleFonts.inter(
                                      fontSize: 14.sp,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w600),
                                ),
                                Text("Gender",
                                    style: GoogleFonts.inter(
                                        fontSize: 14.sp,
                                        color: Colors.black,
                                        fontWeight: FontWeight.w600)),
                                SizedBox(height: 4.h),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}