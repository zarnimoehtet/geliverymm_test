import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

extension DateTimeX on DateTime {
  /// Returns a String representing the date by [format],
  /// [locale] is optional, default is null,
  ///
  /// When called on `DateTime(2022, 7, 20)` with format `dd-MMMM-yyyy`, returns `20-July-2022`.
  ///
  /// Can use
  /// ```dart
  /// DateTime.now().toFormat("dd/MMM/yyyy")
  /// ```
  /// or with [locale]
  /// ```dart
  /// DateTime.now().toFormat("dd/MMM/yyyy", locale: Locale(en, UK))
  /// ```
  String toFormat(String format, {Locale? locale}) {
    DateFormat dateFormat = DateFormat(format, locale?.toString());
    return dateFormat.format(this);
  }

  /// Returns a boolean to check given date is today or not.
  bool get isToday => DateTime.now().difference(this).inDays == 0;
}
