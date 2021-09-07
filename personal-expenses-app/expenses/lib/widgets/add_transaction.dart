import 'package:flutter/material.dart';

class AddTransaction extends StatelessWidget {
  AddTransaction({Key? key}) : super(key: key);

  final titleController = TextEditingController();
  final amountController = TextEditingController();

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
            TextButton(onPressed: () {}, child: Text("Afegir"))
          ],
        )));
  }
}
