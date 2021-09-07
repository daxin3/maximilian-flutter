import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:intl/date_symbol_data_local.dart';

import '../models/transaction.dart';

class TransactionList extends StatelessWidget {
  
  final List<Transaction> transactions;


  TransactionList(this.transactions);


  @override
  Widget build(BuildContext context) {


    initializeDateFormatting();
    
    return Column(
            children: transactions.map((tx) {
              return Card(
                child: Row(
                  children: [
                    Container(
                      child: Text(
                        '${tx.amount} €',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 17),
                      ), //PRICE TEXT
                      margin: EdgeInsets.symmetric(vertical: 8, horizontal: 20),
                      decoration: BoxDecoration(
                          border: Border.all(width: 1, color: Colors.black87),
                          borderRadius: BorderRadius.all(Radius.circular(5))),
                      padding:
                          EdgeInsets.symmetric(horizontal: 11, vertical: 6),
                    ),
                    Column(
                      children: [
                        Text(tx.name,
                            style: TextStyle(
                                fontWeight:
                                    FontWeight.bold)), // NAME TRANSACTION
                        Text(DateFormat.yMMMMd('es_ES').format(tx.date)),
                        // TRANSACTION DATE TEXT)
                      ],
                      crossAxisAlignment: CrossAxisAlignment.start,
                    )
                  ],
                ),
                color: Colors.white,
                margin: EdgeInsets.symmetric(horizontal: 5, vertical: 0.5),
              );
            }).toList(),
          );
  }
}