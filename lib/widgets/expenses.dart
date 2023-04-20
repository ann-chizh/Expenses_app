import 'package:expense_tracker/widgets/expences_list/expenses_list.dart';
import 'package:expense_tracker/widgets/new_expense.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../models/expense.dart';

class Expenses extends StatefulWidget{
  const Expenses({super.key});
  @override
  State<Expenses> createState(){
     return _ExpensesState();
  }
}

class _ExpensesState extends State<Expenses>{
  final List<Expense> _registeredExpenses = [
    Expense(
        title: 'Flutter Course',
        amount: 19.99,
        date: DateTime.now(),
        category: Category.work,),
    Expense(
      title: 'Cinema',
      amount: 15.99,
      date: DateTime.now(),
      category: Category.leisure,),
  ];

void _openAddExpenseOverlay(){
    showModalBottomSheet(context: context, builder: (ctx){
      return const NewExpense();
    });
}


  @override
  Widget build(BuildContext context) {
        return Scaffold(
          appBar: AppBar(
            title: Text('Flutter ExpenseTracker'),
            actions: [
              IconButton(icon: Icon(Icons.add),
              onPressed: _openAddExpenseOverlay,)
            ]
          ),
          body: Column(
          children: [
            const Text('the chart'),
            Expanded(child: ExpensesList(expenses: _registeredExpenses, ))
          ]
        ),);
  }
}