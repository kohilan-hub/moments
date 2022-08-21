import 'package:cloud_firestore/cloud_firestore.dart';

class Service {
  final String name;
  final String district;
  final String category;
  

  Service(
      {required this.name,
      required this.district,
      required this.category
      });

  static Service fromJson(Map<void, dynamic> json) => Service(
      name: json['name'],
      district: json['district'],
      category: json['category'],
      );
}
