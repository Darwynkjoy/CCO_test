import 'package:cco_test/create_account/add_acc.dart';
import 'package:cco_test/create_account/add_acc_2.dart';
import 'package:cco_test/create_account/add_acc_bill.dart';
import 'package:cco_test/training_pages/page_1.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Accountcreate(),
    );
  }
}