import 'package:flutter/material.dart';
import 'package:store_api/controllers/productController.dart';
import 'package:store_api/models/product.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  ProductController productController = ProductController();
  List<Product> _listProducts = [];

  Future<void> _loadData() async {
    final listPrd = await productController.getAllProduct();
    setState(() {
      _listProducts = listPrd;
    });
  }

  @override
  void initState() {
    super.initState();
    _loadData();
  }

  // final List<Map<String, String>> users = [
  //   {'name': 'John Doe', 'email': 'john.doe@example.com'},
  //   {'name': 'Jane Smith', 'email': 'jane.smith@example.com'},
  //   {'name': 'Bob Johnson', 'email': 'bob.johnson@example.com'},
  //   {'name': 'Bob Johnson', 'email': 'bob.johnson@example.com'},
  //   {'name': 'Bob Johnson', 'email': 'bob.johnson@example.com'},
  //   {'name': 'Bob Johnson', 'email': 'bob.johnson@example.com'},
  //   {'name': 'Bob Johnson', 'email': 'bob.johnson@example.com'},
  //   // ادامه دادن داده‌ها
  // ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Text(widget.title),
        ),
        body: ListView.builder(
            itemCount: _listProducts.length,
            itemBuilder: (BuildContext context, int i) {
              return ListTile(
                title: Text(_listProducts[i].title ?? ""),
                subtitle: Text(_listProducts[i].id.toString() ?? ''),
                leading: Text(_listProducts[i].price.toString()?? ''),
              );
            })
        // This trailing comma makes auto-formatting nicer for build methods.
        );
  }
}
