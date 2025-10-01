import 'package:get/get.dart';
import 'package:flutter/material.dart';

class Billpagecontroller extends GetxController {

  var selectedPlanIndex = (-1).obs; // -1 means none selected
  var isChecked = false.obs;

  final List<Map<String, dynamic>> plans = [
  {
    "price": "\$49",
    "Color": Color(0xFF6257A8),
    "description":
        "1 morning air carried a quiet stillness, broken only by the distant sound of birds greeting the day. A soft glow spilled across the horizon, painting the clouds in shades of gold and rose. Streets that would soon be filled with movement remained calm, as if the world itself was pausing before its daily."
  },
  {
    "price": "\$79",
    "Color": Color(0xFF259020),
    "description":
        "2 morning air carried a quiet stillness, broken only by the distant sound of birds greeting the day. A soft glow spilled across the horizon, painting the clouds in shades of gold and rose. Streets that would soon be filled with movement remained calm, as if the world itself was pausing before its daily."
  },
  {
    "price": "\$299",
    "Color": Color(0xFFB73434),
    "description":
        "3 morning air carried a quiet stillness, broken only by the distant sound of birds greeting the day. A soft glow spilled across the horizon, painting the clouds in shades of gold and rose. Streets that would soon be filled with movement remained calm, as if the world itself was pausing before its daily."
  },
];

  // Use RxString to make the selected item observable.
  final Rx<String?> selectedItem = Rx<String?>(null);

// Your list of strings
final List<String> items = <String>[
  'Maryland', 'New York', 'Alabama', 'Kentucky', 'Oregon',
  'Illinois', 'Florida', 'Rhode Island', 'Wisconsin', 'Indiana',
  'Arizona', 'South Carolina', 'Michigan', 'Hawaii', 'West Virginia',
  'California', 'Delaware', 'Minnesota', 'Montana', 'Oklahoma',
  'Arkansas', 'New Jersey', 'Massachusetts', 'Tennessee', 'Nevada',
  'Georgia', 'New Mexico', 'Colorado', 'Texas', 'Connecticut',
  'Wyoming', 'Pennsylvania', 'Utah', 'Nebraska', 'Idaho',
  'Ohio', 'Kansas', 'Mississippi', 'North Carolina', 'Virginia',
  'Missouri', 'Alaska', 'Iowa', 'South Dakota', 'Louisiana',
  'Maine', 'New Hampshire', 'North Dakota', 'Vermont', 'Washington',
];

  // A method to update the selected item.
  void updateSelectedItem(String? newValue) {
    selectedItem.value = newValue;
  }

  var zipCode = ''.obs;
  var zipMessageError = Rxn<String>();
  final zipcodeController = TextEditingController();

  void validateZipCode(String value) {
    zipCode.value = value;

    if (value.isEmpty) {
      zipMessageError.value = 'Please enter a ZIP code';
      return;
    }
    // US ZIP Code Regex: 12345 or 12345-6789
    final zipRegEx = RegExp(r'^\d{5}(-\d{4})?$');

    if (!zipRegEx.hasMatch(value)) {
      zipMessageError.value = 'Invalid ZIP (e.g. 12345 or 12345-6789)';
    } else {
      zipMessageError.value = null; // ✅ null instead of empty string
    }
  }

  var phoneNumber = ''.obs;
  var phoneMessageError = Rxn<String>();
  final phoneController = TextEditingController();

  void validatePhone(String value) {
    phoneNumber.value = value;

    if (value.isEmpty) {
      phoneMessageError.value = 'Please enter a phone number';
      return;
    }

    // ✅ US Phone Regex (10 digits, with optional dashes, spaces, or parentheses)
final phoneRegEx = RegExp(
  r'^(?:\+1\s?)?(?:\d{3}[\s-]?\d{3}[\s-]?\d{4})$'
);
  
    if (!phoneRegEx.hasMatch(value)) {
      phoneMessageError.value = 'Invalid phone (e.g. 123-456-7890)';
    } else {
      phoneMessageError.value = null; // valid
    }
  }
}
