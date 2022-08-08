import 'package:flutter/material.dart';

import '../dummy_categories.dart';
import '../widgets/category_item.dart';

class CategoriesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /*appBar: AppBar(
        title: const Text('La més Marrana!'),
      ),*/
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(20),
          ),
          Flexible(
            child: GridView(
              children: DUMMY_CATEGORIES
                  .map((cat) => CategoryItem(cat.id, cat.title, cat.color))
                  .toList(),
              gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                  maxCrossAxisExtent: 200,
                  childAspectRatio: 3 / 2,
                  crossAxisSpacing: 20,
                  mainAxisSpacing: 20),
              padding: EdgeInsets.all(20),
            ),
          ),
        ],
      ),
    );
  }
}
