import 'package:intl/intl.dart';

extension StringExtension on String {
  DateTime toDateTime(
      {String format = "yyyy-MM-dd'T'HH:mm:ss.SSSZ", bool isUTC = true}) {
    var dateFormat = DateFormat(format);
    return dateFormat.parse(this, isUTC).toLocal();
  }
}
