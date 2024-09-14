import 'package:get/get.dart';
// import 'package:get_storage/get_storage.dart';

extension ValidatorExt on String {
  bool get isValidName => RegExp(r'^[a-zA-Z]+(?: [a-zA-Z]+)*$').hasMatch(this);
  bool get isValidPassword =>
      RegExp(r'^(?=.*[a-zA-Z])(?=.*\d).{8,}$').hasMatch(this);
  // bool get isValidLocationName => RegExp(r'^[a-zA-Z]+(?: [a-zA-Z]+)*$').hasMatch(this);

  bool get isValidUserID => isPhoneNumber || (length >= 10 && isNumericOnly);
  bool get isValidUserCVV => isNumericOnly && length == 3;
  bool get isValidUserCardNumber => length >= 10;

  // bool get isValidCert => length == 11 && isNumericOnly;

  bool get isValidAccountNumber => length >= 10 && isNumericOnly;
}

class Validator {
  static String? validateName(String? value) {
    if (value == null) {
      return 'Not a valid Name';
    }

    if (value.length < 3) {
      return 'Not a valid Name';
    }
    return value.trim().isValidName ? null : 'Not a valid Name';
  }

  static String? validateSingleName(String? value) {
    if (value == null) {
      return 'Not a valid Name';
    }
    if (value.contains(' ')) {
      return "Please enter a single name";
    }
    if (value.length < 3) {
      return 'Not a valid Name';
    }
    return value.trim().isValidName ? null : 'Not a valid Name';
  }

  static String? validateFullName(String? value) {
    if (value != null && value.trim().length < 4) {
      return 'Full Name is too short';
    }
    return null;
  }

  static String? validateLocationName(String? value) {
    return value != null && value.length > 5 ? null : 'Location name too short';
  }

  static String? validateCVV(String? value) {
    return value != null && value.trim().isValidUserCVV
        ? null
        : 'Not a valid cvv';
  }

  static String? validateCardNumber(String? value) {
    return value != null && value.trim().isValidUserCardNumber
        ? null
        : 'Not a valid card number';
  }

  static String? validateUserName(String? value) {
    return value != null && value.trim().length > 2
        ? null
        : 'Username is too short';
  }

  static String? validatePhoneNumber(String? value) {
    return value != null && value.trim().isPhoneNumber
        ? null
        : 'Not a valid phone number';
  }

  static String? validateAmount(String? value, {num? minAmount}) {
    if (value == null || double.tryParse(value) == null) {
      return 'Enter a valid amount';
    }
    if ((double.tryParse(value) ?? 0) <= (minAmount ?? 0)) {
      return 'Amount is too small';
    }
    return null;
  }

  static String? validateEmail(String? value) {
    return value != null && value.trim().isEmail ? null : 'Not a valid email';
  }

  static String? validateFieldNotEmpty(String? value, {String? field}) {
    return value != null && value.isNotEmpty
        ? null
        : '${field ?? "Field"} is required';
  }

  static String? validatePassword(String? value) {
    if (value != null && value.length < 8) {
      return 'Password too short';
    }
    return null;
  }
}
