import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class PetProfilepage extends StatefulWidget {
  const PetProfilepage({super.key});

  @override
  State<PetProfilepage> createState() => _PetProfilepageState();
}

class _PetProfilepageState extends State<PetProfilepage> {
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

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {},
        ),actions: [Icon(Icons.add)],
        title: Padding(
          padding: EdgeInsets.only(left: 60.w),
          child: Text("Pet Profile", style: TextStyle(color: Colors.black)),
        ),
      ),
      body: Padding(
        padding:  EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              padding: EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Color(0xffBDDCBD),
                borderRadius: BorderRadius.circular(10.r),
              ),
              child: Row(
                children: [
                  Icon(Icons.pets, color: Colors.green),
                  SizedBox(width: 8.w),
                  Text("Profile Details",
                      style:
                      TextStyle(fontSize: 16.sp, fontWeight: FontWeight.bold)),
                ],
              ),
            ),
            SizedBox(height: 20.h),
            CircleAvatar(
              radius: 50.r,
              backgroundImage: AssetImage("assets/pet.jpg"),
            ),
            SizedBox(height: 10.h),
            Text("Name",
                style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.bold)),
            SizedBox(height: 20.h),
            TextField(
              controller: TextEditingController(
                text: selectedDate == null
                    ? ""
                    : "${selectedDate!.day}/${selectedDate!.month}/${selectedDate!.year}",
              ),
              decoration: InputDecoration(
                hintText: "BirthDate",
                prefixIcon: Icon(Icons.calendar_today),
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(8.r)),
              ),
              readOnly: true,
              onTap: () => _selectDate(context),
            ),
            SizedBox(height: 10.h),
            _buildDropdownField(
                "Color", ["Black", "White", "Brown", "Golden"], selectedColor,
                    (val) {
                  setState(() => selectedColor = val);
                }),
            SizedBox(height: 10.h),
            Row(
              children: [
                Expanded(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: isFemale ? Colors.green : Colors.white,
                      side: BorderSide(color: Colors.green),
                    ),
                    onPressed: () => setState(() => isFemale = true),
                    child: Text("Female",
                        style: TextStyle(
                            color: isFemale ? Colors.white : Colors.green)),
                  ),
                ),
                SizedBox(width: 10.w),
                Expanded(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: isFemale ? Colors.white : Colors.green,
                      side: BorderSide(color: Colors.green),
                    ),
                    onPressed: () => setState(() => isFemale = false),
                    child: Text("Male",
                        style: TextStyle(
                            color: isFemale ? Colors.green : Colors.white)),
                  ),
                ),
              ],
            ),
            SizedBox(height: 10.h),
            _buildDropdownField(
                "Weight", ["1kg", "2kg", "3kg", "4kg"], selectedWeight, (val) {
              setState(() => selectedWeight = val);
            }),
            Padding(
              padding: EdgeInsets.only(top: 50.h),
              child: Container(
                child: Center(
                    child: Text(
                      "Save",
                      style: GoogleFonts.inter(fontSize: 24.sp),
                    )),
                height: 54.h,
                width: 356.w,
                decoration: BoxDecoration(
                    color: Color(0xff5CB15A),
                    borderRadius: BorderRadius.circular(30.r)),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _buildTextField(String hint, IconData icon) {
    return TextField(
      decoration: InputDecoration(
        hintText: hint,
        prefixIcon: Icon(icon),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(8.r)),
      ),
    );
  }

  Widget _buildDropdownField(String hint, List<String> items,
      String? selectedItem, Function(String?) onChanged) {
    return DropdownButtonFormField<String>(
      decoration: InputDecoration(
        hintText: hint,
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(8.r)),
      ),
      value: selectedItem,
      items: items.map((item) {
        return DropdownMenuItem(
          value: item,
          child: Text(item),
        );
      }).toList(),
      onChanged: onChanged,
    );
  }
}