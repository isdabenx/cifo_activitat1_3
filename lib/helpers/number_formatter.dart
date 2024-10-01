import 'package:intl/intl.dart';

String numberFormatter(double number) {
  NumberFormat numberFormat = NumberFormat('#.000', 'ca_ES');
  return numberFormat.format(number);
}
