import 'package:flutter/material.dart';

class AddTransaction extends StatefulWidget {
  final Function addNewTransaction;


  AddTransaction(this.addNewTransaction);

  @override
  _AddTransactionState createState() => _AddTransactionState();
}

class _AddTransactionState extends State<AddTransaction> {
  final TextEditingController conceptInput = new TextEditingController();
  final TextEditingController amountInput = new TextEditingController();

  void sendTransaction() {
    String concept = conceptInput.text.toString();
    double amount = double.parse(amountInput.text.toString());

    if (concept == '' || amount <= 0) {
      return;
    }

    widget.addNewTransaction(concept, amount);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(4.0),
          child: TextField(
            controller: conceptInput,
            decoration: InputDecoration(
              labelText: "Concepte",
              border: OutlineInputBorder(),
            ),
            onSubmitted: (_) => sendTransaction(),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(4.0),
          child: TextField(
            controller: amountInput,
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
              labelText: "Quantitat",
              border: OutlineInputBorder(),
            ),
            onSubmitted: (_) => sendTransaction(),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(4.0),
          child: TextButton(
            onPressed: () {
              sendTransaction();
            },
            child: Text("Afegir"),
            style: TextButton.styleFrom(
              padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
            ),
          ),
        )
      ],
    );
  }
}
