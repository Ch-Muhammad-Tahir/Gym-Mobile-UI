import 'package:flutter/material.dart';

class HelperFunction {
  static void hideKeyboard() {
    FocusManager.instance.primaryFocus?.unfocus();
  }
}
