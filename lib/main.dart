import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pet_clinic/Admin/Add_FoodDetails.dart';
import 'package:pet_clinic/Admin/AdminView_doctor.dart';
import 'package:pet_clinic/Admin/Admin_Doctorprofile.dart';
import 'package:pet_clinic/Admin/Admin_add_grooming.dart';
import 'package:pet_clinic/Admin/Admin_dashboard.dart';
import 'package:pet_clinic/Admin/Admin_doctor.dart';
import 'package:pet_clinic/Admin/Admin_login.dart';
import 'package:pet_clinic/Admin/Admin_user.dart';
import 'package:pet_clinic/Doctor/Doctor_login.dart';
import 'package:pet_clinic/Doctor/View_Appoinment_details.dart';
import 'package:pet_clinic/Doctor/Doctor_Tapbar.dart';
import 'package:pet_clinic/Doctor/Doctor_notification.dart';
import 'package:pet_clinic/Doctor/Doctor_signup.dart';
import 'package:pet_clinic/Doctor/Doctor_userDetails.dart';
import 'package:pet_clinic/User/Pet_profilepage.dart';
import 'package:pet_clinic/User/User_Addvaccination.dart';
import 'package:pet_clinic/User/User_Grooming.dart';
import 'package:pet_clinic/User/User_add_appoinment.dart';
import 'package:pet_clinic/User/User_add_appoinment_details.dart';
import 'package:pet_clinic/User/User_doctordetails.dart';
import 'package:pet_clinic/User/User_homepage.dart';
import 'package:pet_clinic/User/User_notofication.dart';
import 'package:pet_clinic/User/User_profile.dart';
import 'package:pet_clinic/User/User_signup.dart';
import 'package:pet_clinic/User/user_login.dart';

import 'firebase_options.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: Size(412, 892),
        splitScreenMode: true,
        minTextAdapt: true,
        builder: (context, child) =>
            MaterialApp(debugShowCheckedModeBanner: false,
              title: 'Flutter Demo',
        theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
        ),
      home:  UserLogin(),
      ) );
  }
}

