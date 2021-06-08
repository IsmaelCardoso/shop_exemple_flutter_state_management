import 'package:flutter/material.dart';
import 'views/product_detail.screen.dart';
import 'views/products_overview.screen.dart';
import 'util/app.routes.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Minha Loja',
      theme: ThemeData(
        primarySwatch: Colors.purple,
        accentColor: Colors.deepOrange,
        fontFamily: 'Lato',
      ),
      home: ProductOverviewScreen(),
      routes: {AppRoutes.PRODUCT_DETAIL: (context) => ProductDetailScreen()},
    );
  }
}
