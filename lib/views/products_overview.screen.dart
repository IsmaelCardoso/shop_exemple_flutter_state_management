import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../widgets/product_item.widget.dart';
import '../models/product.model.dart';
import '../providers/products.provider.dart';

class ProductOverviewScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final productsProvider = Provider.of<ProductsProvider>(context);
    final List<ProductModel> products = productsProvider.items;

    return Scaffold(
      appBar: AppBar(
        title: Text('My Store'),
      ),
      body: GridView.builder(
        padding: const EdgeInsets.all(10),
        itemCount: products.length,
        itemBuilder: (context, index) => ProductItemWidget(products[index]),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 3 / 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
        ),
      ),
    );
  }
}
