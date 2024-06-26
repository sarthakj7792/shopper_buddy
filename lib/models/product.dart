// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:shopper_buddy/models/rating.dart';

class Product {
  final String name;
  final String description;
  final double price;
  final double quantity;
  final List<String> images;
  final String category;
  final String? id;
  final List<Rating>? rating;

  //rating

  Product({
    required this.name,
    required this.description,
    required this.price,
    required this.quantity,
    required this.images,
    required this.category,
    this.id,
    this.rating,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'description': description,
      'price': price,
      'quantity': quantity,
      'images': images,
      'category': category,
      'id': id,
      'rating': rating
    };
  }

  factory Product.fromMap(Map<String, dynamic> map) {
    return Product(
      category: map['category'] as String,
      id: map['_id'] != null ? map['id'] as String : null,
      name: map['name'] as String,
      description: map['description'] as String,
      price: map['price'] as double,
      quantity: map['quantity'] as double,
      images: List<String>.from((map['images'] as List<String>)),
      rating: map['ratings'] != null
          ? List<Rating>.from(map['ratings']?.map((x) => Rating.fromMap(x)))
          : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory Product.fromJson(String source) =>
      Product.fromMap(json.decode(source) as Map<String, dynamic>);
}
