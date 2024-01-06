// ignore_for_file: file_names

import 'package:flutter/material.dart';

InputDecoration borderInputDecoration(Color color,
    {String? hinttext,
    bool alignLabelWithHint = true,
    String? counterText,
    Widget? suffixIcon,
    Widget? prefixIcon,
    EdgeInsetsGeometry? padding}) {
  return InputDecoration(
      contentPadding:
          const EdgeInsets.symmetric(vertical: 16.0, horizontal: 16.0),
      alignLabelWithHint: alignLabelWithHint,
      hintText: hinttext,
      //fillColor: AppColors.textBoxBackgroundColor,
      filled: true,
      hintStyle: TextStyle(
        fontSize: 14,
        color: color.withOpacity(0.5),
      ),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(11),
        borderSide: BorderSide(color: Colors.grey.shade300, width: 1),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(11),
        borderSide: BorderSide(color: Colors.grey.shade300, width: 1),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(11),
        borderSide: BorderSide(color: color, width: 1),
      ),
      suffixIcon: suffixIcon,
      prefixIcon: prefixIcon,
      counterText: counterText);
}
