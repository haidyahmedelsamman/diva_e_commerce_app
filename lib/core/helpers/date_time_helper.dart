import 'package:intl/intl.dart';

class DateTimeHelper {
  static String formatDate(DateTime? date) {
    if (date == null) return '';
    return DateFormat('yyyy-MM-dd').format(date);
  }
}
