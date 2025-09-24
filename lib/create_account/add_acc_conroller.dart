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