import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:my_dairy/models/model.dart';

class DairyItem extends StatelessWidget {
  final DairyModels dairy;
  const DairyItem({super.key, required this.dairy});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(dairy.title),
      subtitle: Text(dairy.notes),
      trailing: Text(dairy.date),
    );
  }
}
