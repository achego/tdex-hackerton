import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Nav {
  static Future<T?>? to<T>(Widget page) {
    return Get.to<T>(() => page);
  }

  static Future? off<T>(T page) {
    return Get.off(() => page);
  }

  static Future? offAll<T>(T page) {
    return Get.offAll(() => page);
  }

  static Future? toNamed<T>(String page,
      {Map<String, String>? parameters, T? arguments}) {
    return Get.toNamed(page, parameters: parameters, arguments: arguments);
  }

  static Future? offAllNamed<T>(String page) {
    return Get.offAllNamed(page);
  }

  static Future? offAndToNamed(String page) {
    return Get.offAndToNamed(page);
  }

  static back<T>({
    T? result,
    // bool closeOverlays = false,
    // bool canPop = true,
    // int? id,
  }) {
    return Get.back(result: result);
  }
}
