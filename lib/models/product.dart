class Product {
  int id;
  String title;
  double price;

  Product({required this.id, required this.title, required this.price});

  Product.fromJson(Map<String, dynamic> json)
      : id = json["id"],
        title = json["title"],
        price = json["price"].toDouble();
}


 // factory Product.fromJson2(Map<String, dynamic> json) {
  //   return Product(id: json["id"], title: json["title"]);
  // }

/// MVC ----> model, view, cont