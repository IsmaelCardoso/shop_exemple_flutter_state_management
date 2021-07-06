import 'package:flutter/material.dart';
import '../widgets/product_grid.widget.dart';

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
