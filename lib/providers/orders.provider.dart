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
  List<OrderProvider> _items = [];

  List<OrderProvider> get items {
    return [..._items];
  }

  int get itemsCount {
    return _items.length;
  }

  void addOrder(CartProvider cart) {
    // final total = products.fold(
    //   0.0,
    //   (total, item) => total + (item.price * item.quantity),
    // );

    _items.insert(
      0,
      OrderProvider(
        id: Random().nextDouble().toString(),
        total: cart.totalAmount,
        date: DateTime.now(),
        products: cart.items.values.toList(),
      ),
    );

    notifyListeners();
  }
}
