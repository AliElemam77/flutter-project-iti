class ProductModel {
  List<Product> products;

  ProductModel({required this.products});

  factory ProductModel.fromJson(Map<String, dynamic> json) {
    return ProductModel(
      products:
          (json["products"] as List)
              .map<Product>((x) => Product.fromJson(x))
              .toList(),
    );
  }
}

class Product {
  int id;
  String title;
  String description;
  String category;
  double price;
  double discountPercentage;
  double rating;
  int stock;
  List<String> tags;

  Product({
    required this.id,
    required this.title,
    required this.description,
    required this.category,
    required this.price,
    required this.discountPercentage,
    required this.rating,
    required this.stock,
    required this.tags,
  });

  factory Product.fromJson(Map<String, dynamic> json) {
    return Product(
      id: json["id"],
      title: json["title"],
      description: json["description"],
      category: json["category"],
      price: (json["price"] ?? 0).toDouble(),
      discountPercentage: (json["discountPercentage"] ?? 0).toDouble(),
      rating: (json["rating"] ?? 0).toDouble(),
      stock: json["stock"] ?? 0,
      tags:
          json["tags"] != null
              ? List<String>.from(json["tags"].map((x) => x))
              : [],
    );
  }
}
