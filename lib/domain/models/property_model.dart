class PropertyModel {
  PropertyModel({
    required this.title,
    required this.description,
    required this.location,
    required this.image,
    required this.price,
    this.id,
  });

  String? id;
  final String title;
  final String description;
  final String location;
  final String image;
  final double price;
}
