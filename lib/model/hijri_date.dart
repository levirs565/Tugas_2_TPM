// class HijriDate {
//   final int day;
//   final int month;
//   final int year;

//   HijriDate({required this.day, required this.month, required this.year});


//   static HijriDate fromGeorgianDate(DateTime gregorianDate) {
//     int day = gregorianDate.day;
//     int month = gregorianDate.month;
//     int year = gregorianDate.year;

//     int jd = _gregorianToJulianDay(year, month, day);
//     return _julianDayToHijri(jd);
//   }
// }


import 'package:hijri_date/hijri_date.dart';

String getHijriDate(DateTime gregorianDate) {
  final fromGeorgianDate = HijriDate.fromDate(gregorianDate);
  return "${fromGeorgianDate.hDay} ${fromGeorgianDate.longMonthName} ${fromGeorgianDate.hYear} H";
}

