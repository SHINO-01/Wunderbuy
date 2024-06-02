import 'package:get_storage/get_storage.dart';

class CValidator {
  CValidator._();
  static String? validateEmail(String? value) {
    if (value == null || value.isEmpty) {
      return "An Email is Required";
    }
    final emailRegExp = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');

    if (emailRegExp.hasMatch(value)) {
      return "Invalid Email Address";
    }
    return null;
  }

  static String? validatePassword(String? value) {
    if (value == null || value.isEmpty) {
      return "Password is required";
    }
    if (value.length < 6) {
      return "Password must be at least 6 characters long";
    }
    if (!value.contains(RegExp(r'[A-Z]'))) {
      return "Password must contain at least one Upper case letter";
    }
    if (!value.contains(RegExp(r'[0-9]'))) {
      return "Password must contain at least one number";
    }
    if (!value.contains(RegExp(r'[!@#$%^&*()_+,.?/":<>|{}]'))) {
      return "Password must contain at least a special character";
    }
    return null;
  }

  static String? validatePhonenumber(String? value) {
    if (value == null || value.isEmpty) {
      return "Field Cannot Be Empty!";
    }
    final phoneRegEx = RegExp(r'^\d{11}$');

    if (!phoneRegEx.hasMatch(value)) {
      return "Invalid Phone Number";
    }
    return null;
  }
}
