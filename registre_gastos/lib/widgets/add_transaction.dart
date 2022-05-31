import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class AddTransaction extends StatefulWidget {
  final Function addNewTransaction;

  AddTransaction(this.addNewTransaction);

  @override
  _AddTransactionState createState() => _AddTransactionState();
}

class _AddTransactionState extends State<AddTransaction> {
  final TextEditingController _conceptInput = new TextEditingController();
  final TextEditingController _amountInput = new TextEditingController();
  DateTime? _datePicked = DateTime.now();

  void _sendTransaction() {
    String concept = _conceptInput.text.toString();
    double amount = double.parse(_amountInput.text.toString());

    if (concept.isEmpty || amount <= 0 || _datePicked == null) {
      return;
    }

    widget.addNewTransaction(concept, amount, _datePicked);
  }

  void _presentDatePicker() {
    showDatePicker(
            context: context,
            initialDate: DateTime.now(),
            firstDate: DateTime(2022),
            lastDate: DateTime.now())
        .then((date) {
      if (date == null) {
        return;
      }

      setState(() {
        _datePicked = date;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(4.0),
          child: TextField(
            controller: _conceptInput,
            decoration: InputDecoration(
              labelText: "Concepte",
              border: OutlineInputBorder(),
            ),
            onSubmitted: (_) => _sendTransaction(),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(4.0),
          child: TextField(
            controller: _amountInput,
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
              labelText: "Quantitat",
              border: OutlineInputBorder(),
            ),
            onSubmitted: (_) => _sendTransaction(),
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: Row(
            children: [
              Text(_datePicked != null
                  ? DateFormat.yMd().format(_datePicked!)
                  : "Cap data sel·leccionada"),
              TextButton(
                  onPressed: _presentDatePicker,
                  child: Text(
                    "Tria una data",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  )),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: ElevatedButton(
            onPressed: () {
              _sendTransaction();
            },
            child: Text("Afegir"),
            style: ElevatedButton.styleFrom(
              padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
              textStyle: const TextStyle(
                  decorationColor: Colors.white, fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ],
    );
  }
}
