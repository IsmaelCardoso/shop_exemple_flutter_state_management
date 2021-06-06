import 'package:flutter/material.dart';
import 'package:shop_exemple_flutter_state_management/widgets/product_item.widget.dart';
import '../data/dummy.data.dart';
import '../models/product.model.dart';

class ProductOverviewScreen extends StatelessWidget {
  final List<ProductModel> loadedProducts = DUMMY_PRODUCTS;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Store'),
      ),
      body: GridView.builder(
        padding: const EdgeInsets.all(10),
        itemCount: loadedProducts.length,
        itemBuilder: (context, index) =>
            ProductItemWidget(loadedProducts[index]),
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
