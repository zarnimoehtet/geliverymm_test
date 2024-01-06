import 'package:flutter/material.dart';

extension FocusX on FocusNode {
  void nextToFocus(FocusNode nextFocus) {
    unfocus();
    FocusScope.of(context!).requestFocus(nextFocus);
  }
}
