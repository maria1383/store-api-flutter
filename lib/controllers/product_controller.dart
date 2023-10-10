import 'package:get/get.dart';
import 'package:dio/dio.dart';
import 'package:store_api/models/product.dart';

class ProductController extends GetxController {
  final Dio _dio = Dio(BaseOptions(baseUrl: "https://fakestoreapi.com/"));

  final RxList<dynamic> productsList = [].obs;

  @override
  void onInit() {
    getAllProduct();
    super.onInit();
  }

  // Future<void> fetchData() async {
  //   try {
  //     final response = await _dio.get('https://example.com/api'); // با آدرس API واقعی خود جایگزین کنید
  //     if (response.statusCode == 200) {
  //       productsList.assignAll(response.data);
  //     }
  //   } catch (e) {
  //     print('خطا رخ داد: $e');
  //   }
  // }

  Future<RxList<dynamic>> getAllProduct() async {
  
    String path = "products";
    var res = await _dio.get(path);
    productsList.assignAll(res.data);
    // for (var prd in res.data) {
    //   productsList.add(Product.fromJson(prd));
    // }

    return productsList;
  }

  void search(String query) {
    final filteredData = data.where((item) {
      // منطق جستجو را در اینجا پیاده‌سازی کنید
      // می‌توانید از `item` برای دسترسی به داده‌ها و از `query` برای جستجو استفاده کنید
    }).toList();
    data.assignAll(filteredData);
  }
}
