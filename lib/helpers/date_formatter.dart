import 'package:intl/intl.dart';

String dateTimeFormatter(DateTime datetime) {
  DateTime today = DateTime.now();
  DateTime yesterday = today.subtract(const Duration(days: 1));
  bool isToday = false;
  bool isYesterday = false;

  if (datetime.year == today.year &&
      datetime.month == today.month &&
      datetime.day == today.day) {
    isToday = true;
  } else if (datetime.year == yesterday.year &&
      datetime.month == yesterday.month &&
      datetime.day == yesterday.day) {
    isYesterday = true;
  }

  final String stringFormat =
      (isToday || isYesterday) ? ' HH:mm' : 'd MMM yyyy, HH:mm';

  final DateFormat dateFormat = DateFormat(stringFormat, 'ca');

  return '${isToday ? 'Avui,' : isYesterday ? 'Ahir,' : ''}${dateFormat.format(datetime)}';
}

String dateFormater(DateTime datetime) {
  final DateFormat dateFormat = DateFormat("d MMMM 'del' y", 'ca');
  return dateFormat.format(datetime);
}
