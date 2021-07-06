import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/product.model.dart';
import 'product_item.widget.dart';
import '../providers/products.provider.dart';

class ProductGridWidget extends StatelessWidget {
  final bool showFavoriteOnly;

  ProductGridWidget(this.showFavoriteOnly);

  @override
  Widget build(BuildContext context) {
    final productsProvider = Provider.of<ProductsProvider>(context);
    final List<ProductModel> products = showFavoriteOnly
        ? productsProvider.favoriteItems
        : productsProvider.items;

    return GridView.builder(
      padding: const EdgeInsets.all(10),
      itemCount: products.length,
      itemBuilder: (context, index) => ChangeNotifierProvider.value(
        value: products[index],
        child: ProductItemWidget(),
      ),
      //utilizar o ".value" quando forem dados pré existentes, caso contrario usar sem o .value e create
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 3 / 2,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
      ),
    );
  }
}
