import 'package:hijri_date/hijri_date.dart';

String getHijriDate(DateTime gregorianDate) {
  final fromGeorgianDate = HijriDate.fromDate(gregorianDate);
  return "${fromGeorgianDate.hDay} ${fromGeorgianDate.longMonthName} ${fromGeorgianDate.hYear} H";
}

