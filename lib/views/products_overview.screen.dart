import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../widgets/badge.widget.dart';
import '../widgets/product_grid.widget.dart';
import '../providers/cart.provider.dart';

enum FilterOption {
  Favorite,
  All,
}

class ProductOverviewScreen extends StatefulWidget {
  @override
  _ProductOverviewScreenState createState() => _ProductOverviewScreenState();
}

class _ProductOverviewScreenState extends State<ProductOverviewScreen> {
  bool _showFavoriteOnly = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Store'),
        actions: <Widget>[
          Consumer<CartProvider>(
            child: IconButton(
              icon: Icon(Icons.shopping_cart),
              onPressed: () {},
            ),
            builder: (context, cart, child) => BadgeWidget(
              value: cart.itemsCount.toString(),
              child: child,
            ),
          ),
          PopupMenuButton(
            onSelected: (FilterOption selectedValue) {
              setState(() {
                if (selectedValue == FilterOption.Favorite) {
                  _showFavoriteOnly = true;
                }

                if (selectedValue == FilterOption.All) {
                  _showFavoriteOnly = false;
                }
              });
            },
            icon: Icon(Icons.more_vert),
            itemBuilder: (_) => [
              PopupMenuItem(
                child: Text("Favoritos"),
                value: FilterOption.Favorite,
              ),
              PopupMenuItem(
                child: Text("Todos"),
                value: FilterOption.All,
              ),
            ],
          ),
        ],
      ),
      body: ProductGridWidget(_showFavoriteOnly),
    );
  }
}
