class Age {
  final int years;
  final int months;
  final int days;

  Age({required this.years, required this.months, required this.days});
}

Age getAge(DateTime birthDate) {
  final now = DateTime.now();
  int years = now.year - birthDate.year;
  int months = now.month - birthDate.month;
  int days = now.day - birthDate.day;

  if (days < 0) {
    months -= 1;
    days += DateTime(now.year, now.month, 0).day; 
  }
  if (months < 0) {
    years -= 1;
    months += 12;
  }

  return Age(years: years, months: months, days: days);
}
