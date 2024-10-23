
import 'package:flutter/material.dart';
import 'package:uv_intern_task02/model/products.dart';

import '../service/api_service.dart';

class Shop extends ChangeNotifier {

  List<Product> _products = [];
  final ApiService apiService = ApiService();

  Future<void> getProducts() async {
    try {
      _products = await apiService.getProducts();
    } catch (e) {
      print('Error fetching products: $e');
    }
  }

  List<Product> _cart = [];

  List<Product> get products => _products;
  List<Product> get cart => _cart;

  void addToCart(Product product) {
      _cart.add(product);
    notifyListeners();
  }

  void removeFromCart(Product product) {
    _cart.remove(product);
    notifyListeners();
  }

  double getTotalPrice() {
    double total = 0.0;
    for (var product in cart) {
      total += product.price!;
    }
    return total;
  }
}