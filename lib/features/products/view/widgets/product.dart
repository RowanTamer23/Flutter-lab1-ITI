class Product {
  final String id;
  final String name;
  final double price;
  final String image;
  final bool freeShipping;
  final String description;
  final double rating;

  const Product({
    required this.id,
    required this.name,
    required this.price,
    required this.image,
    this.freeShipping = false,
    this.description = '',
    this.rating = 0.0,
  });

  factory Product.fromJson(Map<String, dynamic> json) {
    return Product(
      id: json['id'].toString(),
      name: json['title'],
      price: json['price'].toDouble(),
      image: json['thumbnail'],
      description: json['description'] ?? '',
      rating: json['rating']?.toDouble() ?? 0.0,
      freeShipping: json['price'] > 50, // Arbitrary rule for demo
    );
  }
}
