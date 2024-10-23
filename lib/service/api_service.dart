
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:uv_intern_task02/model/products.dart';

class ApiService {
  final String baseUrl = 'https://fakestoreapi.com';

  Future<List<Product>> getProducts() async {
    var response = await http.get(Uri.https('fakestoreapi.com', '/products'));

    if (response.statusCode == 200) {
      List jsonData = jsonDecode(response.body);
      return jsonData.map((item) => Product(
        id: item['id'],
        title: item['title'],
        price: (item['price'] is int) ? (item['price'] as int).toDouble() : item['price'],
        description: item['description'],
        category: item['category'],
        image: item['image'],
      )).toList();
    } else {
      throw Exception('Failed to load products');
    }
  }
}