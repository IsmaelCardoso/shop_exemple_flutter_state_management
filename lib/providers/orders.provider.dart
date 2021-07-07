import 'dart:math';

import 'package:flutter/foundation.dart';

import 'cart.provider.dart';

class OrderProvider {
  final String id;
  final double total;
  final List<CartItem> products;
  final DateTime date;

  OrderProvider({
    this.id,
    this.total,
    this.products,
    this.date,
  });
}

class OrdersProvider with ChangeNotifier {
  List<OrderProvider> _orders = [];

  List<OrderProvider> get orders {
    return [..._orders];
  }

  void addOrder(List<CartItem> products, double total) {
    // final total = products.fold(
    //   0.0,
    //   (total, item) => total + (item.price * item.quantity),
    // );

    _orders.insert(
      0,
      OrderProvider(
        id: Random().nextDouble().toString(),
        total: total,
        date: DateTime.now(),
        products: products,
      ),
    );

    notifyListeners();
  }
}
