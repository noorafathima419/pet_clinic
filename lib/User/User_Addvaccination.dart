import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pet_clinic/User/User_homepage.dart';

class UserAddvaccination extends StatefulWidget {
  const UserAddvaccination({super.key});

  @override
  State<UserAddvaccination> createState() => _UserAddvaccinationState();
}

class _UserAddvaccinationState extends State<UserAddvaccination> {
  bool isFemale = true;


  final form_key = GlobalKey<FormState>();
  TextEditingController vaccinationctrl = TextEditingController();
  TextEditingController weightctrl = TextEditingController();

  Future<void> pets() async {
    if (!form_key.currentState!.validate()) {
      return;
    }
    FirebaseFirestore.instance.collection("Appoinment_details").add({
      "vaccination": vaccinationctrl.text,
      "weight":weightctrl.text,

      "Status": 0,
    });

    print("Success");
    Navigator.push(context, MaterialPageRoute(
      builder: (context) {
        return UserHomepage();
      },
    ));
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Color(0xff5CB15A),
          leading: Icon(Icons.arrow_back_ios_new),
          title: Center(
              child: Text(
            "Vaccination",
            style: GoogleFonts.hind(),
          )),
        ),
        body: Expanded(
          child: StreamBuilder(
              stream: FirebaseFirestore.instance
                  .collection("Appoinment_details")
                  .snapshots(),
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return const Center(child: CircularProgressIndicator());
                }
                if (!snapshot.hasData) {
                  return Center(child: Text("no data found"));
                }
                var doct = snapshot.data!.docs;
                return Column(children: [
                  Row(
                    children: [
                      SizedBox(
                        width: 10.w,
                      ),
                      Text(
                        "vaccination Name",
                        style: GoogleFonts.rubik(
                            fontSize: 14.sp, fontWeight: FontWeight.w500),
                      )
                    ],
                  ),
                  Padding(
                    padding:
                        EdgeInsets.only(left: 20.w, right: 20.w, top: 10.h),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Color(0xFFD9D9D9), // Light peach background
                        borderRadius:
                            BorderRadius.circular(12.r), // Rounded corners
                      ),
                      child: TextFormField(controller: vaccinationctrl,
                        decoration: InputDecoration(
                          hintText: "Enter your vacccination name",
                          hintStyle: TextStyle(
                              color: Colors.grey,
                              fontSize: 12.sp), // Hint text color
                          border: InputBorder.none, // Remove default border
                          contentPadding: EdgeInsets.symmetric(
                              horizontal: 16,
                              vertical: 12), // Padding inside field
                        ),
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 40.h, left: 10.w),
                        child: Text(
                          "Weight",
                          style: GoogleFonts.rubik(
                              fontSize: 14.sp, fontWeight: FontWeight.w500),
                        ),
                      )
                    ],
                  ),
                  Padding(
                    padding:
                    EdgeInsets.only(left: 20.w, right: 20.w, top: 10.h),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Color(0xFFD9D9D9), // Light peach background
                        borderRadius:
                        BorderRadius.circular(12.r), // Rounded corners
                      ),
                      child: TextFormField(controller: weightctrl,
                        decoration: InputDecoration(
                          hintText: "Enter your pet weight",
                          hintStyle: TextStyle(
                              color: Colors.grey,
                              fontSize: 12.sp), // Hint text color
                          border: InputBorder.none, // Remove default border
                          contentPadding: EdgeInsets.symmetric(
                              horizontal: 16,
                              vertical: 12), // Padding inside field
                        ),
                      ),
                    ),
                  ),

                  Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 40.h, left: 10.w),
                        child: Text(
                          "Status",
                          style: GoogleFonts.rubik(
                              fontSize: 14.sp, fontWeight: FontWeight.w500),
                        ),
                      )
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 20, right: 20.w, top: 10.h),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Color(0xFFD9D9D9), // Light peach background
                        borderRadius:
                            BorderRadius.circular(12.r), // Rounded corners
                      ),
                      child: TextFormField(
                        decoration: InputDecoration(
                          hintText: "Completed",
                          hintStyle: TextStyle(
                              color: Colors.grey,
                              fontSize: 12.sp), // Hint text color
                          border: InputBorder.none, // Remove default border
                          contentPadding: EdgeInsets.symmetric(
                              horizontal: 16,
                              vertical: 12), // Padding inside field
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 80.h),
                    child: Row(
                      children: [
                        // First Button: Female
                        Expanded(
                          child: Padding(
                            padding: EdgeInsets.only(left: 20.w, right: 10.r),
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor:
                                    isFemale ? Color(0xff238F8F) : Colors.white,
                                side: BorderSide(color: Colors.black),
                              ),
                              onPressed: () => setState(() => isFemale = true),
                              child: Text("First dose",
                                  style: TextStyle(
                                      color: isFemale
                                          ? Colors.white
                                          : Colors.green)),
                            ),
                          ),
                        ),
                        // Second Button: Male
                        Expanded(
                          child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: 10),
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor:
                                    isFemale ? Colors.white : Colors.green,
                                side: BorderSide(color: Colors.black),
                              ),
                              onPressed: () => setState(() => isFemale = false),
                              child: Text("second dose",
                                  style: TextStyle(
                                      color: isFemale
                                          ? Colors.green
                                          : Colors.white)),
                            ),
                          ),
                        ),
                        // Third Button: Other
                        Expanded(
                          child: Padding(
                            padding: EdgeInsets.only(right: 20.w, left: 10.w),
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: isFemale == false
                                    ? Color(0xff238F8F)
                                    : Colors.white,
                                side: BorderSide(color: Colors.black),
                              ),
                              onPressed: () {
                                setState(() => isFemale =
                                    false); // "null" can represent "Other" or a neutral option.
                              },
                              child: Text("Booster",
                                  style: TextStyle(
                                      color: isFemale == false
                                          ? Colors.white
                                          : Colors.green)),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 80.h),
                    child: GestureDetector(onTap: () {
                      if (form_key.currentState!.validate()) {
                        pets();
                      }
                    },
                      child: Container(
                        child: Center(
                            child: Text(
                          "Add vaccination",
                          style: GoogleFonts.hind(color: Colors.white),
                        )),
                        width: 172.w,
                        height: 42.h,
                        decoration: BoxDecoration(
                            color: Color(0xff5CB15A),
                            borderRadius: BorderRadius.circular(12.r)),
                      ),
                    ),
                  )
                ]);
              }),
        ));
  }
}
