import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../util/app.routes.dart';
import '../models/product.model.dart';

class ProductItemWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final ProductModel product = Provider.of<ProductModel>(context);

    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: GridTile(
        child: GestureDetector(
          onTap: () {
            Navigator.of(context).pushNamed(
              AppRoutes.PRODUCT_DETAIL,
              arguments: product,
            );
            // Navigator.of(context).push(
            //   MaterialPageRoute(
            //     builder: (context) => ProductDetailScreen(product),
            //   ),
            // );
          },
          child: Image.network(
            product.imageUrl,
            fit: BoxFit.cover,
          ),
        ),
        footer: GridTileBar(
          backgroundColor: Colors.black54,
          leading: IconButton(
            color: Theme.of(context).accentColor,
            icon: Icon(
                product.isFavorite ? Icons.favorite : Icons.favorite_border),
            onPressed: () {
              product.toggleFavorite();
            },
          ),
          title: Text(
            product.title,
            textAlign: TextAlign.center,
          ),
          trailing: IconButton(
            color: Theme.of(context).accentColor,
            icon: Icon(Icons.shopping_cart),
            onPressed: () {},
          ),
        ),
      ),
    );
  }
}
