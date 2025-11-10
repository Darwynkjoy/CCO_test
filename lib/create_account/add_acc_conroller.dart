import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Accountpagecontroller extends GetxController {
  // Use RxString to make the selected item observable.
  final Rx<String?> selectedItem = Rx<String?>(null);

  // The list of items for the dropdown.
  final List<String> items = <String>[
    'Lisence Type 1',
    'Lisence Type 2',
    'Lisence Type 3',
  ];

  // A method to update the selected item.
  void updateSelectedItem(String? newValue) {
    selectedItem.value = newValue;
  }

  var selectedDate = Rx<DateTime?>(null);

  Future<void> selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: selectedDate.value ?? DateTime.now(),
      firstDate: DateTime.now(),
      lastDate: DateTime(2060),
    );
    if (picked != null && picked != selectedDate.value) {
      selectedDate.value = picked;
    }
  }
   // validate the first name 
  var firstName = ''.obs;
  var firstNameError = Rxn<String>(); // Rxn is for a reactive nullable variable
  final firstNameController = TextEditingController();
  final RegExp _nameRegExp = RegExp(r'^[a-zA-Z ]+$');

  void validateFirstName(String value) {
    if (value.isEmpty) {
      firstNameError.value = "Name field can't be empty.";
    } else if (!_nameRegExp.hasMatch(value)) {
      firstNameError.value = "Name only contain letters.";
    } else if (value.length<=2) {
      firstNameError.value = "Name contain more than 2 letters.";
    } else {
      firstNameError.value = null; // Clear the error if validation passes
    }
  }

  //last name validation
  var lastName = ''.obs;
  var lastNameError = Rxn<String>(); // Rxn is for a reactive nullable variable
  final lastNameController = TextEditingController();

    void validateLastName(String value) {
    if (value.isEmpty) {
      lastNameError.value = "Name field can't be empty.";
    } else if (!_nameRegExp.hasMatch(value)) {
      lastNameError.value = "Name only contain letters.";
    } else if (value.length<=2) {
      lastNameError.value = "Name contain more than 2 letters.";
    } else {
      lastNameError.value = null; // Clear the error if validation passes
    }
  }

  var email = ''.obs;
  var confirmEmail = ''.obs;
  var emailError = Rxn<String>();
  var confirmEmailError = Rxn<String>();

  final emailController = TextEditingController();
  final confirmEmailController = TextEditingController();

  final RegExp _emailRegExp =
      RegExp(r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{3,}$');

  /// Validates the primary email field.
  void validateEmail(String value) {
    final trimmedValue = value.trim();
    email.value = trimmedValue;

    if (trimmedValue.isEmpty) {
      emailError.value = "Email field can't be empty.";
    } else if (!_emailRegExp.hasMatch(trimmedValue)) {
      emailError.value = "Please enter a valid email address.";
    } else {
      emailError.value = null;
    } 
    // Always re-validate the confirm Email field when the main Email changes
    if (confirmEmail.value.isNotEmpty) {
      validateConfirmEmail(confirmEmail.value);
    }
  }

  /// Validates the confirmation email field against the primary one.
  void validateConfirmEmail(String value) {

    final trimmedValue = value.trim();
    confirmEmail.value = trimmedValue;

    if (trimmedValue.isEmpty) {
        confirmEmailError.value = "Confirm Email field can't be empty.";
    } else if (email.value != trimmedValue) {
      confirmEmailError.value = "Email addresses do not match.";
    } else {
      confirmEmailError.value = null;
    }
  }
 // pass word validation
  var password = ''.obs;
  var confirmPassword = ''.obs;

  var passwordError = Rxn<String>();
  var confirmPasswordError = Rxn<String>();

  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();

final RegExp _passwordRegExp =
      RegExp(r'^(?=.*[A-Z])(?=.*[!@#\$&*~0-9]).{6,}$');

  /// Validates the primary password field.
  void validatePassword(String value) {
    final trimmedValue = value.trim();
    password.value = trimmedValue;

    if (trimmedValue.isEmpty) {
      passwordError.value = "Password can't be empty.";
    } else if (!_passwordRegExp.hasMatch(trimmedValue)) {
      passwordError.value = "Use 6 or more characters with a mix of letters,numbers & symbols.";
    } else {
      passwordError.value = null;
    }
    // Always re-validate the confirm password field when the main password changes
    if (confirmPassword.value.isNotEmpty) {
      validateConfirmPassword(confirmPassword.value);
    }
  }

  /// Validates the confirmation password field against the primary one.
  void validateConfirmPassword(String value) {
    final trimmedValue = value.trim();
    confirmPassword.value = trimmedValue;

    if (trimmedValue.isEmpty) {
      confirmPasswordError.value = "Confirm Password can't be empty.";
    } else if (password.value != trimmedValue) {
      confirmPasswordError.value = "Password addresses do not match.";
    } else {
      confirmPasswordError.value = null;
    }
  }

}

//page acc2
class Addresspagecontroller extends GetxController {
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

//page acc bill
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
