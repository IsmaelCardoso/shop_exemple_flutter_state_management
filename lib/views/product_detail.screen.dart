import 'package:flutter/material.dart';
import '../providers/product.model.dart';

class ProductDetailScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final ProductModel product =
        ModalRoute.of(context).settings.arguments as ProductModel;
    return Scaffold(
      appBar: AppBar(
        title: Text(product.title),
      ),
    );
  }
}
