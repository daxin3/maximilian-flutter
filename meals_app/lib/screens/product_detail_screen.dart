import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/models/product.dart';

class ProductDetailScreen extends StatelessWidget {
  //final String title;
  //final double price;
  //final String imageUrl;

  //ProductDetailScreen(this.title, this.price, this.imageUrl);
  static const routeName = '/product-detail';
  @override
  Widget build(BuildContext context) {
    final productId = ModalRoute.of(context).settings.arguments as String;

    return Scaffold(
      appBar: AppBar(
        title: Text('title'),
      ),
    );
  }
}
