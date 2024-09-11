import 'package:flutter/material.dart';

Future appWait(int milisecs) async {
  return Future.delayed(Duration(milliseconds: milisecs));
}

dismissKeyBoard() {
  FocusManager.instance.primaryFocus?.unfocus();
}
