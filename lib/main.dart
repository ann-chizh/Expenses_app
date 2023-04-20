import 'package:flutter/material.dart';
import 'package:expense_tracker/widgets/expenses.dart';
void main() {
  runApp(
        MaterialApp(
         theme: ThemeData.light(useMaterial3: true),
         home: Expenses(),
       ),
  );
}




