import 'package:flutter/material.dart';


import './widgets/user_transactions.dart';

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
          UserTransactions()
        ],
      ),
    );
  }
}
