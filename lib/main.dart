import 'package:cco_test/create_account/add_acc.dart';
import 'package:cco_test/create_account/add_acc_2.dart';
import 'package:cco_test/create_account/add_acc_bill.dart';
import 'package:cco_test/training_pages/page_1.dart';
import 'package:cco_test/training_pages/page_2.dart';
import 'package:cco_test/training_pages/page_3.dart';
import 'package:cco_test/test_pages/testingmode_2.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Testingmode2(),
    );
  }
}