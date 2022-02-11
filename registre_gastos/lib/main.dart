import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'model/transaction.dart';
import './widgets/transaction_list.dart';
import './widgets/add_transaction.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Expenses Flutter App',
      home: MyHomePage(),
      theme: ThemeData(
        primarySwatch: Colors.cyan,
        accentColor: Colors.deepOrangeAccent
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final List<Transaction> _userTransactions = [
    //Transaction(id: "1", amount: 33.4, title: "Sabates", date: DateTime.now()),
    //Transaction(id: "2", amount: 68.4, title: "Botes", date: DateTime.now())
  ];

  void _addTransaction(String title, double amount) {
    final tx = new Transaction(
        id: DateTime.now().toString(),
        title: title,
        amount: amount,
        date: DateTime.now());

    setState(() {
      _userTransactions.add(tx);
    });

    Navigator.of(context).pop();
  }

  void _startAddNewTransaction(BuildContext ctx) {
    showModalBottomSheet(
      context: ctx,
      builder: (_) {
        return AddTransaction(_addTransaction);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Expenses flutter app'),
        actions: [
          IconButton(
            onPressed: () {
              _startAddNewTransaction(context);
            },
            icon: Icon(Icons.add),
          ),
        ],
      ),
      body: Column(
        children: [
          Card(
            child: Container(
              child: Text("Hola!"),
              width: double.infinity,
              alignment: Alignment.center,
            ),
            elevation: 4,
          ),
          Card(
            child: TransactionList(_userTransactions),
            elevation: 0,
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          _startAddNewTransaction(context);
        },
        mini: false,
        clipBehavior: Clip.none,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
