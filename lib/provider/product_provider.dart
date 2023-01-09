import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import '../models/product.dart';

class ProductProvider extends ChangeNotifier {
  bool isLoading = false;
  List<Product> _products = [];
  List<Product> get products => _products;

  Future<void> getProducts() async {
    isLoading = true;
    notifyListeners();

    final response = await http.get(Uri.parse(
        'https://api.escuelajs.co/api/v1/products?offset=1&limit=10'));

    _products = productFromJson(response.body);
    isLoading = false;
    notifyListeners();
  }
}
