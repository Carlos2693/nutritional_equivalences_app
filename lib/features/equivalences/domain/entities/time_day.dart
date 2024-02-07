import 'equivalence.dart';

class TimeDay {
  final Equivalence breakfast;
  final Equivalence collation;
  final Equivalence mealTime;
  final Equivalence collation2;
  final Equivalence dinner;

  TimeDay({
    required this.breakfast,
    required this.collation,
    required this.mealTime,
    required this.collation2,
    required this.dinner,
  });

  factory TimeDay.fromJson(Map<String, dynamic> json) => TimeDay(
    breakfast: Equivalence.fromJson( json['breakfast'] ),
    collation: Equivalence.fromJson( json['collation'] ),
    mealTime: Equivalence.fromJson( json['mealTime'] ), 
    collation2: Equivalence.fromJson( json['collation2'] ),
    dinner: Equivalence.fromJson( json['dinner'] ),
  );
}
