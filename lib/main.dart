import 'package:cco_test/create_account/add_acc.dart';
import 'package:cco_test/create_account/add_acc_2.dart';
import 'package:cco_test/create_account/add_acc_bill.dart';
import 'package:cco_test/test_pages/testingmode_1.dart';
import 'package:cco_test/test_pages/testingmode_3.dart';
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
      initialRoute: '/createaccount',
      getPages: [
        GetPage(name: '/createaccount', page: () => Accountcreate()),
        GetPage(name: '/address', page: () => Addresscreate()),
        GetPage(name: '/bill', page: () => BillCreate()),
        GetPage(name: '/training1', page: () => Trainingpage1()),
        GetPage(name: '/training2', page: () => Trainingpage2()),
        GetPage(name: '/training3', page: () => Trainingpage3()),
        GetPage(name: '/testing1', page: () => Testingmode1()),
        GetPage(name: '/testing2', page: () => Testingmode2()),
        GetPage(name: '/testing3', page: () => Testingmode3()),
  ],
    );
  }
}