class StoreAntika {
  final String productName;
  final String description;
  final String category;
  final String imageUrl;

  StoreAntika({
    required this.productName,
    required this.description,
    required this.category,
    required this.imageUrl,
  });

  Map<String, dynamic> toJson() {
    return {
      'product_name': productName,
      'description': description,
      'category': category,
      'image_url': imageUrl,
    };
  }
}
