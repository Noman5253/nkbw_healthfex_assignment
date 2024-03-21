import 'package:weather_app/core/date_parser/date_parser.dart';
import 'package:weather_app/core/validator/validator.dart';

class IsoStringDateParser extends DateParser {
  @override
  DateTime? parseDate(String? date) {
    if (StringValidator(text: date).isValid()) {
      return DateTime.parse(date!);
    }
    return null;
  }
}
