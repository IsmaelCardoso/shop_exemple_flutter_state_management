import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/product.model.dart';
import 'product_item.widget.dart';
import '../providers/products.provider.dart';

class ProductGridWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final productsProvider = Provider.of<ProductsProvider>(context);
    final List<ProductModel> products = productsProvider.items;

    return GridView.builder(
      padding: const EdgeInsets.all(10),
      itemCount: products.length,
      itemBuilder: (context, index) => ChangeNotifierProvider(
        create: (context) => products[index],
        child: ProductItemWidget(),
      ),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 3 / 2,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
      ),
    );
  }
}
