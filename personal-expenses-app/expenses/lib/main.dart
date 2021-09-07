import 'package:expenses/widgets/add_transaction.dart';
import 'package:expenses/widgets/transaction_list.dart';
import 'package:flutter/material.dart';


import './models/transaction.dart';
import './widgets/add_transaction.dart';
import './widgets/transaction_list.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter App',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
 

  @override
  Widget build(BuildContext context) {
    

    return Scaffold(
      appBar: AppBar(
        title: Text('Registre de transaccións'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            child: Card(
              child: Text("Primera posicio en targeta"),
              color: Colors.blue,
              elevation: 5,
            ),
            width: double.infinity,
          ),
          AddTransaction(),
          TransactionList()
        ],
      ),
    );
  }
}
