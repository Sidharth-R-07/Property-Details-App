// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

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

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'title': title,
      'description': description,
      'location': location,
      'image': image,
      'price': price,
      'id': id,
    };
  }

  factory PropertyModel.fromMap(Map<String, dynamic> map) {
    return PropertyModel(
      id: map['id'] != null ? map['id'] as String : null,
      title: map['title'] as String,
      description: map['description'] as String,
      location: map['location'] as String,
      image: map['image'] as String,
      price: map['price'] is int
          ? (map['price'] as int).toDouble()
          : map['price'] as double,
    );
  }

  String toJson() => json.encode(toMap());

  factory PropertyModel.fromJson(String source) =>
      PropertyModel.fromMap(json.decode(source) as Map<String, dynamic>);

  PropertyModel copyWith({
    String? title,
    String? description,
    String? location,
    String? image,
    double? price,
    String? id,
  }) {
    return PropertyModel(
      title: title ?? this.title,
      description: description ?? this.description,
      location: location ?? this.location,
      image: image ?? this.image,
      price: price ?? this.price,
      id: id ?? this.id,
    );
  }
}
