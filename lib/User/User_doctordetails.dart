import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class UserDoctordetails extends StatefulWidget {
  const UserDoctordetails({super.key});

  @override
  State<UserDoctordetails> createState() => _UserDoctordetailsState();
}

class _UserDoctordetailsState extends State<UserDoctordetails> {
  @override
  Widget build(BuildContext context) {
    return   Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff5CB15A),
        title: Center(child: Text("DOCTOR")),
      ),
      body: Column(
        children: [
          Row(
            children: [
              Text(
                "Our Best Veterinarian",
                style: GoogleFonts.inter(fontSize: 15,fontWeight: FontWeight.bold),
              ),
              Padding(
                padding: EdgeInsets.only(left: 130.w),
                child: Text(
                  "See all",
                  style: GoogleFonts.inter(color: Color(0xff46E4E4)),
                ),
              )
            ],
          ),
          Expanded(
            child: StreamBuilder( stream: FirebaseFirestore.instance
        .collection("Doctor_Register")
        .snapshots(),
    builder: (context, snapshot) {
    if (snapshot.connectionState == ConnectionState.waiting) {
    return const Center(child: CircularProgressIndicator());
    }
    if (!snapshot.hasData) {
    return Center(child: Text("no data found"));
    }
    var user = snapshot.data!.docs;
    return ListView.builder(
                itemCount: user.length,
                itemBuilder: (context, index) {
                  return Card(
                    elevation: 3,
                    margin: const EdgeInsets.symmetric(vertical: 10),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    child: Container(
                      padding: const EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        color: Color(0xffCF6A6AF0E4E4),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Row(
                        children: [
                          Container(
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                              shape: BoxShape.rectangle,
                              color: Colors.grey[400],
                            ),
                            child: const Icon(Icons.person,
                                size: 30, color: Colors.white),
                          ),
                          const SizedBox(width: 16),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(user[index]["name"],
                                    style: GoogleFonts.inter(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600)),
                                  Text(user[index]["experience"],
                                    style: GoogleFonts.inter(
                                        fontSize: 14, color: Colors.black,fontWeight: FontWeight.w600)),
                                Text(user[index]["qualification"],
                                  style: GoogleFonts.inter(
                                      fontSize: 14, color: Colors.black,fontWeight: FontWeight.w600),),
                                Text(user[index]["number"],
                                    style: GoogleFonts.inter(
                                        fontSize: 14, color: Colors.black,fontWeight: FontWeight.w600)),
                                const SizedBox(height: 4),
                                Row(
                                  children: [
                                    const Icon(Icons.access_time,
                                      size: 16, color: Colors.black,),
                                    const SizedBox(width: 5),
                                    Text("Monday - Friday at 8:00 am - 5:00pm",
                                        style: GoogleFonts.inter(
                                            fontSize: 12, color: Colors.black)),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
    );
    },
            ),
          ),
        ],
      ),
    );
  }
}
