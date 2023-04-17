import 'package:expense_tracker/models/expense.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class ExpenseItem extends StatelessWidget {  @override
  const ExpenseItem(this.expense, {super.key});

  final Expense expense;

Widget build(BuildContext context) {
      return Card(
            child: Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 16,
      ),
          child: Column(
            children: [
              Text(expense.title),
              const SizedBox(height: 4,)
            ]
          )
            ),
          );
  }
}
