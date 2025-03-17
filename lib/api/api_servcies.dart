import 'package:dio/dio.dart';
import 'package:tests/models/product.dart';

class ApiServcies {
  final dio = Dio();

  Future<List<Product>> getProducts() async {
    try {
      final response = await dio.get('https://dummyjson.com/products');

      print("API Response: ${response.data}"); // ✅ طباعة البيانات للتأكد

      if (response.statusCode == 200) {
        List productsData = response.data['products'];
        return productsData.map((e) => Product.fromJson(e)).toList();
      }
      throw Exception('Failed to load products');
    } catch (e) {
      print('Error fetching products: $e');
      throw Exception(e.toString());
    }
  }
}
