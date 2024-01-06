import 'package:flutter/material.dart';

extension ScrollControllerX on ScrollController {
  void onScrollEnd(void Function() listener) {
    addListener(() {
      if (position.pixels == position.maxScrollExtent) {
        listener();
      }
    });
  }
}
