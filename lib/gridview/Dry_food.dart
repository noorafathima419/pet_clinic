import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DryFood extends StatefulWidget {
  const DryFood({super.key});

  @override
  State<DryFood> createState() => _DryFoodState();
}

class _DryFoodState extends State<DryFood> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
      Column(
        children: [
          Row(
            children: [
              SizedBox(
                height: 100.h,
                width: 360.w,
                child: Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 30.w),
                      child: TextFormField(
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.symmetric(
                              vertical: 15.sp,
                              horizontal:
                                  20.h), // Adjust padding inside field
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30.r),
                          ),
                          prefixIconColor: Color(0xffE5E5E5),
                          suffixIconColor: Color(0xffE5E5E5),
                          prefixIcon: Icon(
                            Icons.search,
                            color: Colors.black,
                          ),
                          hintText: "Search",
                          filled: false,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
