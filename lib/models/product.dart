class Product {
  final String id;
  final String title;
  final String imageUrl;
  final double price;

  Product({
    required this.id,
    required this.title,
    required this.imageUrl,
    required this.price,
  });

  // Factory method to create a Product from JSON
  factory Product.fromJson(Map<String, dynamic> json) {
    return Product(
      id: json['id'] as String,
      title: json['title'] as String,
      imageUrl: json['image_url'] as String,
      price: (json['price'] as num).toDouble(),
    );
  }

  // Method to convert a Product to JSON
  Map<String, dynamic> toJson() {
    return {'id': id, 'title': title, 'image_url': imageUrl, 'price': price};
  }
}
