import 'package:flutter/material.dart';
import 'package:store_api/views/screans/home_screan.dart';

Future<void> main() async {
  runApp(const MyApp());
  // var url = Uri.https("fakestoreapi.com", "products", {"limit":"2",  });
  // var res = await http.get(url);
  // print(res.body);

  //Dio dio = Dio(BaseOptions(baseUrl: "https://fakestoreapi.com/"));
  //var url = "products?limit=1&sort=desc";
  //var res = await dio.get(url);
  //print(res.data);

  //ctrl+ / ---> comment, uncomment
  //ctrl+ c ---> copy
  //ctrl+ v ---> past
  //ctrl+ x ---> cut
  //ctrl+ z ---> undo برگشت به عقب
  //ctrl+ shift + z ---> reundo حرکت به جلو

// ASC: to sort the data in ascending order.صعودی
// DESC: to sort the data in descending order.نزولی

  // Dio dio = Dio(BaseOptions(baseUrl: "https://fakestoreapi.com/"));
  // String path = "products/2";
  // var res = await dio.get(path);
  // // print(res.data["id"]);
  // // print(res.data["title"]);
  // // print(res.data["price"]);
  // // print(res.data["description"]);

  // // Product(id: res.data["id"], title: res.data["title"]);
  // Product.fromJson(res.data);

  // var res2 = await dio.get("https://fakestoreapi.com/products");
  // print(res2.data);

  // Dio dio = Dio();
  // var res = await dio.get("https://api.spoonacular.com/recipes/informationBulk?ids=715538,716429&apiKey=6a0f4d45753a465bab34d79ab3e601ab");
  // print(res.data);

// &apiKey=6a0f4d45753a465bab34d79ab3e601ab
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}
