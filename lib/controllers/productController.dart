import 'package:dio/dio.dart';
import 'package:store_api/models/product.dart';

class ProductController {
  
  Future<Product> getSingleProduct() async {
    Dio dio = Dio(BaseOptions(baseUrl: "https://fakestoreapi.com/"));
    String path = "products/2";
    var res = await dio.get(path);

    return Product.fromJson(res.data);
  }

  Future<List<Product>> getAllProduct() async {
    List<Product> productsList = [];

    Dio dio = Dio(BaseOptions(baseUrl: "https://fakestoreapi.com/"));
    String path = "products";
    var res = await dio.get(path);

    for (var prd in res.data) {
      productsList.add(Product.fromJson(prd));
    }

    return productsList;
  }

  Future<Product> getProductsList() async {
    Dio dio = Dio(BaseOptions(baseUrl: "https://fakestoreapi.com/"));
    String path = "products/2";
    var res = await dio.get(path);

    return Product.fromJson(res.data);
  }
}
