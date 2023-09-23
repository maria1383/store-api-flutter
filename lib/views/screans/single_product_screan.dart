import 'package:flutter/material.dart';
import 'package:store_api/controllers/productController.dart';
import 'package:store_api/models/product.dart';


class SingleProductPage extends StatefulWidget {
  const SingleProductPage({super.key, required this.title});
  final String title;

  @override
  State<SingleProductPage> createState() => _SingleProductPageState();
}

class _SingleProductPageState extends State<SingleProductPage> {
  int _counter = 0;
  ProductController productController = ProductController();
  Product _p1 = Product(id: 0, title: "", price: 0.0);

  Future<void> _loadData() async {
    final product = await productController.getSingleProduct();
    setState(() {
      _p1 = product;
    });
  }

  @override
  void initState() {
    super.initState();
    _loadData();
  }

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
    print(_counter);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(_p1.title),
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              _counter.toString(),
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
