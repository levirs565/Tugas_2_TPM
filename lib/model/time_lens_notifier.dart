import 'package:flutter/material.dart';
import 'package:proyek_mobile/model/age.dart';
import 'package:proyek_mobile/model/hijri_date.dart';
import 'package:proyek_mobile/model/neptu.dart';
import 'package:proyek_mobile/model/weton.dart';

class TimeLensNotifier with ChangeNotifier {
  DateTime _dateTime = DateTime.now();
  late Weton _weton;
  late Age _age;
  late String _hijriDate;

  TimeLensNotifier() {
    _processDate();
  }

  DateTime get dateTime => _dateTime;
  Age get age => _age;
  String get hijriDate => _hijriDate;

  String get dino => getDinoSaptawara(_weton.number.saptawara);

  String get pasaran => _weton.name.pancawara;

  int get neptuPancawara => getNeptuPancawara(_weton.number.pancawara);

  int get neptuSaptawara => getNeptuSaptawara(_weton.number.saptawara);

  int get neptuTotal => neptuPancawara + neptuSaptawara;

  void updateDate(DateTime newDate) {
    _dateTime = newDate;
    _processDate();
    notifyListeners();
  }

  void _processDate() {
    _weton = getWeton(_dateTime);
    _age = getAge(_dateTime);
    _hijriDate = getHijriDate(_dateTime);
  }
}
