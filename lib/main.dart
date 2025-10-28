import 'package:cco_test/create_account/add_acc.dart';
import 'package:cco_test/create_account/add_acc_2.dart';
import 'package:cco_test/create_account/add_acc_bill.dart';
import 'package:cco_test/test_pages/testingmode_1.dart';
import 'package:cco_test/training_pages/page_1.dart';
import 'package:cco_test/training_pages/page_2.dart';
import 'package:cco_test/training_pages/page_3.dart';
import 'package:cco_test/test_pages/testingmode_2.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/third',
      getPages: [
        //GetPage(name: '/splash', page: () => SplashScreen()),
        GetPage(name: '/first', page: () => Accountcreate()),
        GetPage(name: '/second', page: () => Addresscreate()),
        GetPage(name: '/third', page: () => BackgroundFormPage()),
        /*GetPage(name: '/home', page: () => homescreen()),
        GetPage(name: '/forgot-password', page: () => ForgotPassword()),
        GetPage(name: '/about', page: () => Profile()),
        GetPage(name: '/manage_profile', page: () => manage_profile()),
        GetPage(name: '/attendclass_page', page: () => attendclass()),
        GetPage(name: '/package_extension_page', page: () => packageextensionPage()),
        GetPage(name: '/editprofile_page', page: () => EditProfilePage()),
        GetPage(name: '/changepassword', page: () => ChangePassword())*/
  ],
    );
  }
}