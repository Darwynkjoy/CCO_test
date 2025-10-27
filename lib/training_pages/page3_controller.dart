import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Trainingpage3controller extends GetxController {

  final List<Map<String, dynamic>> plans = [
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
