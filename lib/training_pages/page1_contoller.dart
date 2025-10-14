import 'package:get/get.dart';
import 'package:flutter/material.dart';

class Trainingpage1controller extends GetxController {

  var selectedPlanIndex = (-1).obs; // -1 means none selected
  var isChecked = false.obs;

  final List<Map<String, dynamic>> plans = [
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
