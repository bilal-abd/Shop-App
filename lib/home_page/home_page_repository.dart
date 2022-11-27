import 'package:dio/dio.dart';
import 'package:http/http.dart';

import 'model/home_page_model.dart';

class AmazonRepo {
  AmazonRepo();

  Future<List<Product>> getProduct() async {
    try {
      var response = await Dio().get('https://fakestoreapi.com/products');
      List<Product> clothes = response.data
          .map<Product>((product) => Product.fromJson(product))
          .toList();
      return clothes;
    } catch (e) {
      print(e);
      return [];
    }
  }
}
