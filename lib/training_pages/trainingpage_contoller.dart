import 'package:get/get.dart';
import 'package:flutter/material.dart';

class Trainingpagecontroller extends GetxController {
// page1
  var selectedPlanIndex = (-1).obs; // -1 means none selected
  var isChecked = false.obs;

  final List<Map<String, dynamic>> subjectColor = [
  {
    "description": "Property Ownership and Land Use Controls and Regulations",
    "Color": Color(0xFFF1E6F7),
  },
  {
    "description": "Laws of Agency",
    "Color": Color(0xFFFEF2FB),
  },
  {
    "description": "Valuation and Market Analysis",
    "Color": Color(0xFFE0F2F6), 
  },
  {
    "description": "Financing",
    "Color": Color(0xFFE2F4E8),
  },
  {
    "description": "Practice of Real Estate and Mandated Disclosures",
    "Color": Color(0xFFFAE6C5),
  },
  {
    "description": "Contracts",
    "Color": Color(0xFFFDE7E7),
  },
];
}

class Trainingpage2controller extends GetxController {
// page 2
final List<Map<String, dynamic>> subjectSelection = [
  {
    "description": "Property Ownership",
  },
  {
    "description": "Laws of Agency",
  },
  {
    "description": "Valuation and",
  },
  {
    "description": "Valuation and",
  },
];

  final selectedIndex = RxnInt();

  void selectPlan(int index) {
    selectedIndex.value = index;
  }
}

class Trainingpage3controller extends GetxController {
  //page3
    final List<Map<String, dynamic>> subjectResult = [
  {
    "description": "First response correct",
    "Color": Color(0xFFE2F4E8),
    "result": "0",
  },
  {
    "description": "First response incorrect",
    "Color": Color(0xFFFDE7E7),
    "result": "1",
  },
  {
    "description": "Number of missed questions",
    "Color": Color(0xFFFAE6C5),
    "result": "191",
  },
  {
    "description": "Overall percentage",
    "Color": Color(0xFFF1E6F7),
    "result": "5%",
  },
];
}
