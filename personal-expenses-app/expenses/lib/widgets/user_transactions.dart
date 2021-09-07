import 'package:flutter/material.dart';

import './transaction_list.dart';
import './add_transaction.dart';
import '../models/transaction.dart';

class UserTransactions extends StatefulWidget {
  const UserTransactions({Key? key}) : super(key: key);

  @override
  _UserTransactionsState createState() => _UserTransactionsState();
}

class _UserTransactionsState extends State<UserTransactions> {
  final List<Transaction> _userTransactions = [
    new Transaction(
        id: "1", name: "New Shoes", amount: 34.89, date: DateTime.now()),
    new Transaction(
        id: "2", name: "Nike Jacket", amount: 80.99, date: DateTime.now())
  ];

  void _addNewTransaction(String title, double amount) {
    final newTx = Transaction(
        id: DateTime.now().toString(),
        name: title,
        amount: amount,
        date: DateTime.now());

    setState(() {
      _userTransactions.add(newTx);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AddTransaction(_addNewTransaction),
        TransactionList(_userTransactions)
      ],
    );
  }
}
