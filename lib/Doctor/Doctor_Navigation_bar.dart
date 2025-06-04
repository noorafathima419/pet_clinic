import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pet_clinic/Doctor/Doctor_Tapbar.dart';
import 'package:pet_clinic/Doctor/Doctor_Vaccination_Details.dart';
import 'package:pet_clinic/Doctor/Doctor_notification.dart';
import 'package:pet_clinic/Doctor/Doctor_userDetails.dart';
import 'package:pet_clinic/Doctor/Doctor_view_grooming.dart';

class DoctorNavigationBar extends StatefulWidget {
  const DoctorNavigationBar({super.key});

  @override
  State<DoctorNavigationBar> createState() => _DoctorNavigationBarState();
}

class _DoctorNavigationBarState extends State<DoctorNavigationBar> {
  int _selectedIndex = 0;

  static final List<Widget> _widgetOptions = [
    DoctorTapbar(),
    DoctorVaccinationDetails(),
    DoctorViewGrooming(),
    DoctorNotification(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(body: _widgetOptions[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon:  SvgPicture.asset('Asset/Vector@2x.png', width: 24, height: 24),
            label: 'Home',
          ),
          BottomNavigationBarItem(
              icon: SvgPicture.asset('Asset/Group.svg', width: 24, height: 24),
              label: 'Notifications',
              backgroundColor: Colors.green
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset('Asset/', width: 24, height: 24),
            label: 'Doctor',
          ),
          BottomNavigationBarItem(
            icon:  SvgPicture.asset('Asset/Vector.svg', width: 24, height: 24),
            label: ' profile',
          ),
        ],
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.black,
        iconSize: 30,
        onTap: _onItemTapped,
        elevation: 4,
      ),);
  }
}
