import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../model/transaction.dart';

class TransactionList extends StatefulWidget {
  final List<Transaction> transactions;
  final Function deleteTransactionFn;

  TransactionList(this.transactions, this.deleteTransactionFn);

  @override
  _TransactionListState createState() =>
      _TransactionListState(transactions, deleteTransactionFn);
}

class _TransactionListState extends State<TransactionList> {
  final List<Transaction> transactions;
  final Function deleteTransactionFn;

  _TransactionListState(this.transactions, this.deleteTransactionFn);

  @override
  Widget build(BuildContext context) {
    return transactions.isEmpty
        ? LayoutBuilder(builder: (ctx, constraints) {
            return Column(
              children: [
                Text("No transactions added yet!"),
                SizedBox(
                  height: 40,
                ),
                Container(
                  height: constraints.maxHeight * 0.45,
                  child: Image.asset(
                    'assets/images/waiting.png',
                    height: 250,
                  ),
                ),
              ],
            );
          })
        : Container(
            child: ListView.builder(
              itemBuilder: (ctx, index) {
                return Card(
                  elevation: 4,
                  child: ListTile(
                    leading: CircleAvatar(
                      radius: 25,
                      child: Padding(
                        padding: EdgeInsets.all(6),
                        child: FittedBox(
                            child: Text('${transactions[index].amount} €')),
                      ),
                    ),
                    title: Text(
                      transactions[index].title,
                      style: Theme.of(context).textTheme.title,
                    ),
                    subtitle: Text(
                        DateFormat.yMMMMd().format(transactions[index].date)),
                    trailing: IconButton(
                      icon: Icon(Icons.delete),
                      // Faig servir una fucnió anónima per passar el parametre de la func. delete
                      onPressed: () =>
                          deleteTransactionFn(transactions[index].id),
                    ),
                  ),
                );
              },
              itemCount: transactions.length,
            ),
          );
  }
}
      /* Column(
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
              }).toList(),*/
    
