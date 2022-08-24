import 'package:cloud_firestore/cloud_firestore.dart';

class Service {
  final String name;
  final String district;
  final String category;
  final String address;
  final double price;
  final String phoneNumber;
  final String description;
  final List<dynamic> images;

  Service({
    required this.name,
    required this.district,
    required this.category,
    required this.address,
    required this.price,
    required this.phoneNumber,
    required this.description,
    required this.images,
  });


  static Service fromJson(Map<void, dynamic> json) => Service(
      name: json['name'],
      district: json['district'],
      category: json['category'],
      address: json['address'],
      price: (json['price'] as num).toDouble(),
      phoneNumber: json['phoneNumber'],
      description: json['description'],
      images: json['images'],
      );
}
