import 'package:flutter/widgets.dart';
import '../data/dummy.data.dart';
import '../models/product.model.dart';

class ProductsProvider with ChangeNotifier {
  List<ProductModel> _items = DUMMY_PRODUCTS;

  List<ProductModel> get items => [..._items];

  void addProduct(ProductModel product) {
    _items.add(product);
    notifyListeners();
  }
}
