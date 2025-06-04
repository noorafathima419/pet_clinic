import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pet_clinic/Doctor/Doctor_Tapbar.dart';

class DoctorVaccinationDetails extends StatefulWidget {
  const DoctorVaccinationDetails({super.key});

  @override
  State<DoctorVaccinationDetails> createState() =>
      _DoctorVaccinationDetailsState();
}

class _DoctorVaccinationDetailsState extends State<DoctorVaccinationDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold( appBar: AppBar(
    backgroundColor: Colors.green,
    leading: IconButton(
    icon: Icon(Icons.arrow_back, color: Colors.black),
    onPressed: () {
    Navigator.push(context, MaterialPageRoute(
    builder: (context) {
    return DoctorTapbar();
    },
    ));
    },
    )),body: Column(children: [
      Padding(
        padding: EdgeInsets.only(left: 30.w, right: 30.w),
        child: Card(
          elevation: 3,
          margin: EdgeInsets.symmetric(vertical: 10),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.r)),
          child: InkWell(
            onTap: () {},
            child: Container(
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Color(0xffCF6A6AF0E4E4),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Row(
                children: [
                  SizedBox(width: 16.w),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("owner name",
                          style: GoogleFonts.inter(
                              fontSize: 16.sp, fontWeight: FontWeight.w600)),
                      Text("pet name",
                          style: GoogleFonts.inter(
                              fontSize: 14.sp,
                              color: Colors.black,
                              fontWeight: FontWeight.w600)),
                      Text(
                        "vaccination name",
                        style: GoogleFonts.inter(
                            fontSize: 14.sp,
                            color: Colors.black,
                            fontWeight: FontWeight.w600),
                      ),
                      Text("weight",
                          style: GoogleFonts.inter(
                              fontSize: 14.sp,
                              color: Colors.black,
                              fontWeight: FontWeight.w600)),
                      Text(
                        "status",
                        style: GoogleFonts.inter(
                            fontSize: 14.sp,
                            color: Colors.black,
                            fontWeight: FontWeight.w600),
                      ),
                      Text(
                        "dose",
                        style: GoogleFonts.inter(
                            fontSize: 14.sp,
                            color: Colors.black,
                            fontWeight: FontWeight.w600),
                      ),
                      SizedBox(height: 4.h),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      )
    ]));
  }
}
