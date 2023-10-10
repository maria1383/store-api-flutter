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

 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Text("ماریان"),
        ),
        body: Column(
          children: [
            Form(child: Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: TextField(),
                  ),
                ),
                IconButton(onPressed: (){

                }, icon: Icon(Icons.search))
              ],
            )),
            Expanded(
              child: ListView.builder(
                  itemCount: _listProducts.length,
                  itemBuilder: (BuildContext context, int i) {
                    return ListTile(
                      title: Text(_listProducts[i].title ?? ""),
                      subtitle: Text(_listProducts[i].id.toString() ?? ''),
                      leading: Text(_listProducts[i].price.toString()?? ''),
                    );
                  }),
            ),
          ],
        )
        // This trailing comma makes auto-formatting nicer for build methods.
        );
  }
}
