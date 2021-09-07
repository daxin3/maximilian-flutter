import 'package:flutter/material.dart';

class AddTransaction extends StatelessWidget {
  final Function addTx;
  final titleController = TextEditingController();
  final amountController = TextEditingController();

  AddTransaction(this.addTx);

  @override
  Widget build(BuildContext context) {
    return Card(
        elevation: 5,
        child: Container(
            child: Column(
          children: [
            TextField(
              controller: titleController,
              decoration: InputDecoration(labelText: "Concepte"),
            ),
            TextField(
              controller: amountController,
              decoration:
                  InputDecoration(labelText: "Quantitat", hintText: "1,20"),
            ),
            TextButton(
                onPressed: () {
                  addTx(
                    titleController.text, 
                    double.parse(amountController.text));
                },
                child: Text("Afegir"))
          ],
        )));
  }
}
