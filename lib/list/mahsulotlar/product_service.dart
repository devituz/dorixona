
import 'dart:convert';
import 'package:dorixona/list/mahsulotlar/model.dart';
import 'package:flutter/services.dart' show rootBundle;

class ProductService {
  Future<List<Product>> fetchProducts() async {
    final String response = await rootBundle.loadString('lib/list/mahsulotlar/mahsulot_beta.json');
    final List<dynamic> data = json.decode(response);
    return data.map<Product>((json) => Product.fromJson(json)).toList();
  }
}
