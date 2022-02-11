import 'package:flutter/material.dart';

import '../model/transaction.dart';

class TransactionList extends StatefulWidget {
  final List<Transaction> transactions;

  TransactionList(this.transactions);

  @override
  _TransactionListState createState() => _TransactionListState(transactions);
}

class _TransactionListState extends State<TransactionList> {
  final List<Transaction> transactions;

  _TransactionListState(this.transactions);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: transactions.isEmpty
          ? Column(
              children: [
                Text("No transactions added yet!"),
                Image.asset('assets/images/waiting.png'),
              ],
            )
          : Column(
              children: transactions.map((tr) {
                return Card(
                  elevation: 4,
                  child: Row(
                    children: [
                      Container(
                        child: Text(
                          '${tr.amount.toStringAsFixed(2)} €',
                          style: TextStyle(
                              fontSize: 13, fontWeight: FontWeight.w300),
                        ),
                        margin:
                            EdgeInsets.symmetric(horizontal: 20, vertical: 3),
                        padding: EdgeInsets.all(6),
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 235, 235, 235),
                          border:
                              Border.all(color: Colors.transparent, width: 2),
                          borderRadius: BorderRadius.circular(5),
                        ),
                      ),
                      Column(
                        children: [
                          Text(
                            tr.title,
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 14),
                          ),
                          Text(
                            tr.date.toString(),
                            style: TextStyle(fontSize: 13),
                          )
                        ],
                        crossAxisAlignment: CrossAxisAlignment.start,
                      )
                    ],
                  ),
                );
              }).toList(),
            ),
    );
  }
}
