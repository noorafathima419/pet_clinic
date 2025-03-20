import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

class UserAddAppoinmentDetails extends StatefulWidget {
  const UserAddAppoinmentDetails({super.key});

  @override
  State<UserAddAppoinmentDetails> createState() =>
      _UserAddAppoinmentDetailsState();
}

class _UserAddAppoinmentDetailsState extends State<UserAddAppoinmentDetails> {
  String? selectedGender = "Male";
  String? selectedPetType;
  String? selectedDay, selectedMonth, selectedYear;
  String? selectedColor;
  String? selectedWeight;
  bool isFemale = true;
  DateTime? selectedDate;

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: selectedDate ?? DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2100),
    );
    if (picked != null && picked != selectedDate) {
      setState(() {
        selectedDate = picked;
      });
    }
  }

  TextEditingController timeController = TextEditingController();

  Future<void> _selectTime(BuildContext context) async {
    TimeOfDay? pickedTime = await showTimePicker(
      context: context,
      initialTime: TimeOfDay.now(),
    );

    if (pickedTime != null) {
      setState(() {
        timeController.text = pickedTime.format(context); // Formats time
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff5CB15A),
        leading: Icon(
          Icons.arrow_back_ios_new,
        ),
        title: Padding(
          padding: EdgeInsets.only(left: 50.w),
          child: Text(
            "APPOINMENT",
            style: GoogleFonts.hind(),
          ),
        ),
      ),
      body: ListView(children: [
        Column(
          children: [
            Padding(
                padding: EdgeInsets.only(left: 10.w, top: 10.h),
                child: Container(
                  child: Column(
                    children: [
                      Row(
                        children: [
                          SizedBox(
                            width: 10.w,
                          ),
                          Text(
                            "pet's Name",
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
                            color: Color(0xFFFFF4EC), // Light peach background
                            borderRadius:
                                BorderRadius.circular(12.r), // Rounded corners
                          ),
                          child: TextFormField(
                            decoration: InputDecoration(
                              hintText: "Name",
                              hintStyle: TextStyle(
                                  color: Colors.grey), // Hint text color
                              border: InputBorder.none, // Remove default border
                              contentPadding: EdgeInsets.symmetric(
                                  horizontal: 16.sp,
                                  vertical: 12.sp), // Padding inside field
                            ),
                          ),
                        ),
                      ),
                      Row(
                        children: [
                          SizedBox(
                            width: 10.w,
                          ),
                          Text(
                            "Appoinment Date",
                            style: GoogleFonts.rubik(
                                fontSize: 14.sp, fontWeight: FontWeight.w500),
                          )
                        ],
                      ),
                      Padding(
                        padding:
                            EdgeInsets.only(left: 20.w, right: 20.w, top: 10.h),
                        child: Container(
                          width: 300.w,
                          decoration: BoxDecoration(
                            color: Color(0xFFFFF4EC), // Light peach background
                            borderRadius: BorderRadius.circular(12.r),
                          ),
                          child: TextFormField(
                            readOnly: true, // Prevents manual typing
                            decoration: InputDecoration(
                              hintText: "Select Date",
                              hintStyle: TextStyle(color: Colors.grey),
                              border: InputBorder.none,
                              contentPadding: EdgeInsets.symmetric(
                                  horizontal: 16.sp, vertical: 12.sp),
                              suffixIcon: Icon(Icons.calendar_today,
                                  color: Colors.black), // Calendar icon
                            ),
                            onTap: () {
                              _selectDate(context); // Open calendar on tap
                            },
                          ),
                        ),
                      ),
                      Row(
                        children: [
                          SizedBox(
                            width: 10.w,
                          ),
                          Text(
                            "Appoinment Date",
                            style: GoogleFonts.rubik(
                                fontSize: 14.sp, fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                      Padding(
                        padding:
                            EdgeInsets.only(left: 20.w, right: 20.w, top: 10.h),
                        child: Container(
                          width: 94.w,
                          height: 54.72.h,
                          decoration: BoxDecoration(
                            color: Color(0xFFFFF4EC), // Light peach background
                            borderRadius:
                                BorderRadius.circular(12.r), // Rounded corners
                          ),
                          child: TextFormField(
                            decoration: InputDecoration(
                                hintText: "Pick Time",
                                hintStyle: TextStyle(
                                    color: Colors.black), // Hint text color
                                border:
                                    InputBorder.none, // Remove default border
                                contentPadding: EdgeInsets.symmetric(
                                    horizontal: 16, vertical: 12),
                                suffixIcon: Icon(
                                    Icons.lock_clock) // Padding inside field
                                ),
                            onTap: () {
                              _selectTime(context); // Open time picker on tap
                            },
                          ),
                        ),
                      ),
                      Row(
                        children: [
                          SizedBox(
                            width: 10.w,
                          ),
                          Text(
                            "Gender",
                            style: GoogleFonts.rubik(
                                fontSize: 14.sp, fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 10.w),
                        child: Row(
                          children: [
                            Text("Male", style: TextStyle(fontSize: 16.sp)),
                            Radio(
                              value: "Male",
                              groupValue: selectedGender,
                              onChanged: (value) {
                                setState(() {
                                  selectedGender = value.toString();
                                });
                              },
                              activeColor: Colors.green, // Selected color
                            ),
                            SizedBox(
                              width: 50.w,
                            ),
                            Text("Female", style: TextStyle(fontSize: 16.sp)),
                            SizedBox(
                              width: 20.w,
                            ),
                            Radio(
                              value: "Female",
                              groupValue: selectedGender,
                              onChanged: (value) {
                                setState(() {
                                  selectedGender = value.toString();
                                });
                              },
                              activeColor: Colors.green, // Selected color
                            ),
                          ],
                        ),
                      ),
                      Row(
                        children: [
                          SizedBox(
                            width: 10.w,
                          ),
                          Text(
                            "pet'Type",
                            style: GoogleFonts.rubik(
                                fontSize: 14.sp, fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                      Padding(
                        padding:
                            EdgeInsets.only(left: 20.w, right: 20.w, top: 10.h),
                        child: Container(
                          decoration: BoxDecoration(
                            color: Color(0xFFFFF4EC), // Light peach background
                            borderRadius:
                                BorderRadius.circular(12.r), // Rounded corners
                          ),
                          child: TextFormField(
                            decoration: InputDecoration(
                              hintText: "Type",
                              hintStyle: TextStyle(
                                  color: Colors.grey), // Hint text color
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
                          SizedBox(
                            width: 10.w,
                          ),
                          Text(
                            "Owner name",
                            style: GoogleFonts.rubik(
                                fontSize: 14.sp, fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                      Padding(
                        padding:
                            EdgeInsets.only(left: 20.w, right: 20.w, top: 10.h),
                        child: Container(
                          decoration: BoxDecoration(
                            color: Color(0xFFFFF4EC), // Light peach background
                            borderRadius:
                                BorderRadius.circular(12.r), // Rounded corners
                          ),
                          child: TextFormField(
                            decoration: InputDecoration(
                              hintText: "Name",
                              hintStyle: TextStyle(
                                  color: Colors.grey), // Hint text color
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
                          SizedBox(
                            width: 10.w,
                          ),
                          Text(
                            "Number",
                            style: GoogleFonts.rubik(
                                fontSize: 14.sp, fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                      Padding(
                        padding:
                            EdgeInsets.only(left: 20.w, right: 20.w, top: 10.h),
                        child: Container(
                          decoration: BoxDecoration(
                            color: Color(0xFFFFF4EC), // Light peach background
                            borderRadius:
                                BorderRadius.circular(12.r), // Rounded corners
                          ),
                          child: TextFormField(
                            decoration: InputDecoration(
                              prefixIcon: IntlPhoneField(),
                              hintStyle: TextStyle(
                                  color: Colors.grey), // Hint text color
                              border: InputBorder.none, // Remove default border
                              contentPadding: EdgeInsets.symmetric(
                                  horizontal: 16,
                                  vertical: 12), // Padding inside field
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 6.h,
                      ),
                      Container(
                        child: Center(
                          child: Text(
                            "Book Appoinment",
                            style: GoogleFonts.hind(
                                color: Colors.white, fontSize: 20.sp),
                          ),
                        ),
                        width: 295.w,
                        height: 46.h,
                        decoration: BoxDecoration(
                            color: Color(0xff5CB15A),
                            borderRadius: BorderRadius.circular(15.r)),
                      )
                    ],
                  ),
                  height: 650.h,
                  width: 340.w,
                  decoration: BoxDecoration(
                    color: Color(0xffF0E4E4), // Background color
                    borderRadius:
                        BorderRadius.circular(15.r), // Rounded corners
                    border: Border.all(
                        width: 1.w, color: Colors.black), // Border color
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.2), // Shadow color
                        spreadRadius: 2, // Expands the shadow
                        blurRadius: 10, // Softness of the shadow
                        offset:
                            Offset(4, 4), // Moves shadow to the bottom-right
                      ),
                    ],
                  ),
                ))
          ],
        ),
      ]),
    );
  }
}
