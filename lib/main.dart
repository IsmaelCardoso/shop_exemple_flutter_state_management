import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'providers/cart.provider.dart';
import 'providers/products.provider.dart';
import 'providers/orders.provider.dart';

import 'views/products_overview.screen.dart';
import 'views/product_detail.screen.dart';
import 'views/cart.screen.dart';
import 'views/orders.screen.dart';

import 'util/app.routes.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => new ProductsProvider(),
        ),
        ChangeNotifierProvider(
          create: (_) => new CartProvider(),
        ),
        ChangeNotifierProvider(
          create: (_) => new OrdersProvider(),
        ),
      ],
      child: MaterialApp(
        title: 'My Store',
        theme: ThemeData(
          primarySwatch: Colors.purple,
          accentColor: Colors.deepOrange,
          fontFamily: 'Lato',
        ),
        home: ProductOverviewScreen(),
        routes: {
          AppRoutes.PRODUCT_DETAIL: (context) => ProductDetailScreen(),
          AppRoutes.CART: (context) => CartScreen(),
          AppRoutes.ORDERS: (context) => OrdersScreen(),
        },
      ),
    );
  }
}
