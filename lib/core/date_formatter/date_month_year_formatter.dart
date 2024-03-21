import 'package:intl/intl.dart';
import 'package:weather_app/core/date_formatter/date_formatter.dart';

class DateMonthYearFormatter extends DateFormatter {
  @override
  String formateDate(DateTime? date) {
    if (date != null) {
      return DateFormat("MMMM, yyyy").format(date);
    }
    return "";
  }
}
