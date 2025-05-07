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
  String selectedDose = 'first';

  final form_key = GlobalKey<FormState>();
  TextEditingController vaccinationctrl = TextEditingController();
  TextEditingController weightctrl = TextEditingController();
   TextEditingController statusctrl = TextEditingController();

  Future<void> addvaccination() async {
    if (!form_key.currentState!.validate()) {
      return;
    }
    FirebaseFirestore.instance.collection("Appoinment_details").add({
      "vaccination": vaccinationctrl.text,
      "weight":weightctrl.text,
      "Status":statusctrl.text,
      "doseType": selectedDose,
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
          ),
        ),
      ),
      body: Form(
        key: form_key,
        child: ListView(children: [
          Column(
            children: [
              Row(
                children: [
                  SizedBox(width: 10),
                  Text(
                    "Vaccination Name",
                    style: GoogleFonts.rubik(
                        fontSize: 14, fontWeight: FontWeight.w500),
                  )
                ],
              ),
              Padding(
                padding: EdgeInsets.only(left: 20, right: 20, top: 10),
                child: Container(
                  decoration: BoxDecoration(
                    color: Color(0xFFD9D9D9),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: TextFormField(
                    controller: vaccinationctrl,
                    validator: (value) {
                      if (value == null || value.trim().isEmpty) {
                        return 'Please enter vaccination name';
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                      hintText: "Enter your vaccination name",
                      hintStyle: TextStyle(color: Colors.grey, fontSize: 12),
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.symmetric(
                          horizontal: 16, vertical: 12),
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
                padding: EdgeInsets.only(left: 20.w, right: 20.w, top: 10.h),
                child: Container(
                  decoration: BoxDecoration(
                    color: Color(0xFFD9D9D9),
                    borderRadius: BorderRadius.circular(12.r),
                  ),
                  child: TextFormField(
                    controller: weightctrl,
                    keyboardType: TextInputType.number,
                    validator: (value) {
                      if (value == null || value.trim().isEmpty) {
                        return 'Please enter weight';
                      }
                      final num? weight = num.tryParse(value);
                      if (weight == null || weight <= 0) {
                        return 'Enter a valid weight';
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                      hintText: "Enter your pet weight",
                      hintStyle: TextStyle(color: Colors.grey, fontSize: 12.sp),
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.symmetric(
                          horizontal: 16, vertical: 12),
                    ),
                  ),
                ),
              ),
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 40, left: 10),
                    child: Text(
                      "Status",
                      style: GoogleFonts.rubik(
                          fontSize: 14, fontWeight: FontWeight.w500),
                    ),
                  )
                ],
              ),
              Padding(
                padding: EdgeInsets.only(left: 20, right: 20, top: 10),
                child: Container(
                  decoration: BoxDecoration(
                    color: Color(0xFFD9D9D9),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: TextFormField(
                    controller: statusctrl,
                    validator: (value) {
                      if (value == null || value.trim().isEmpty) {
                        return 'Please enter status';
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                      hintText: "Completed",
                      hintStyle: TextStyle(color: Colors.grey, fontSize: 12),
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.symmetric(
                          horizontal: 16, vertical: 12),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 80),
                child: Row(
                  children: [
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.only(left: 20, right: 10),
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: selectedDose == 'first'
                                ? Color(0xff238F8F)
                                : Colors.white,
                            side: BorderSide(color: Colors.black),
                          ),
                          onPressed: () =>
                              setState(() => selectedDose = 'first'),
                          child: Text("First dose",
                              style: TextStyle(
                                  color: selectedDose == 'first'
                                      ? Colors.white
                                      : Colors.green)),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: selectedDose == 'second dose'
                                ? Color(0xff238F8F)
                                : Colors.white,
                            side: BorderSide(color: Colors.black),
                          ),
                          onPressed: () =>
                              setState(() => selectedDose = 'second dose'),
                          child: Text("Second dose",
                              style: TextStyle(
                                  color: selectedDose == 'second'
                                      ? Colors.white
                                      : Colors.green)),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.only(right: 20, left: 10),
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: selectedDose == 'third dose'
                                ? Color(0xff238F8F)
                                : Colors.white,
                            side: BorderSide(color: Colors.black),
                          ),
                          onPressed: () =>
                              setState(() => selectedDose = 'third dose'),
                          child: Text("Booster",
                              style: TextStyle(
                                  color: selectedDose == 'third dose'
                                      ? Colors.white
                                      : Colors.green)),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 80),
                child: GestureDetector(
                  onTap: () {
                    if (form_key.currentState!.validate()) {
                      addvaccination();
                    }
                  },
                  child: Container(
                    child: Center(
                      child: Text(
                        "Add vaccination",
                        style: GoogleFonts.hind(color: Colors.white),
                      ),
                    ),
                    width: 172,
                    height: 42,
                    decoration: BoxDecoration(
                      color: Color(0xff5CB15A),
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                ),
              )
            ],
          ),
        ]),
      ),
    );
  }
}