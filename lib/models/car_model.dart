class Car {
  final String id;
  final String brand;
  final double price;
  final String type;
  final String imageUrl;
  bool isFavorite = false;

  Car({
    required this.id,
    required this.brand,
    required this.price,
    required this.type,
    required this.imageUrl,
    this.isFavorite = false,
  });
}
