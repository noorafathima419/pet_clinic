import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AddFooddetails extends StatefulWidget {
  const AddFooddetails({super.key});

  @override
  State<AddFooddetails> createState() => _AddFooddetailsState();
}

class _AddFooddetailsState extends State<AddFooddetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {},
        ),
        title: Padding(
          padding: EdgeInsets.only(left: 90.w),
          child: Text("FOODS", style: TextStyle(color: Colors.black)),
        ),
      ), body: Padding(
      padding:  EdgeInsets.all(8.0),
      child: ListView.builder(
        itemCount: 7,
        itemBuilder: (context, index) {
          return Padding(
            padding:  EdgeInsets.only(left: 30.w,right: 40.w),
            child: Card(
              color: Colors.brown[100], // Light brown card color
              margin: EdgeInsets.symmetric(vertical: 8),
              child: Padding(
                padding:  EdgeInsets.all(12.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 50.w,
                      height: 50.h,
                      decoration: BoxDecoration(
                        color: Colors.black12,
                        borderRadius: BorderRadius.circular(8.r),
                      ),
                      child: Icon(Icons.image, size: 30, color: Colors.black54),
                    ),
                    SizedBox(width: 12.w),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          ("name"),
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text("description"),
                        Text(
                          "cattegory",
                          style: TextStyle(color: Colors.black54),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    ),
    );
  }
}
