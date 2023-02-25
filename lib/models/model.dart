import 'package:nanoid/nanoid.dart';

class DairyModels {
  late String id;
  final String date;
  final String title;
  final String notes;

  DairyModels({
    required this.date,
    required this.title,
    required this.notes,
  }) {
    id = nanoid(10);
  }
}
