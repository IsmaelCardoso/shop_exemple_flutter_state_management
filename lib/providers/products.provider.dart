import 'package:flutter/widgets.dart';
import '../data/dummy.data.dart';
import 'product.model.dart';

class ProductsProvider with ChangeNotifier {
  List<ProductModel> _items = DUMMY_PRODUCTS;

  // bool _showFavoriteOnly = false;

  List<ProductModel> get items => [..._items];

  List<ProductModel> get favoriteItems {
    return _items.where((prod) => prod.isFavorite).toList();
  }

  // List<ProductModel> get items {
  //   if (_showFavoriteOnly) {
  //     return _items.where((prod) => prod.isFavorite).toList();
  //   }

  //   return [..._items];
  // }

  // void showFavoriteOnly() {
  //   _showFavoriteOnly = true;
  //   notifyListeners();
  // }

  // void showAll() {
  //   _showFavoriteOnly = false;
  //   notifyListeners();
  // }

  void addProduct(ProductModel product) {
    _items.add(product);
    notifyListeners();
  }
}
