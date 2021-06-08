import 'package:flutter/material.dart';
import '../widgets/product_grid.widget.dart';

class ProductOverviewScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Store'),
      ),
      body: ProductGridWidget(),
    );
  }
}
