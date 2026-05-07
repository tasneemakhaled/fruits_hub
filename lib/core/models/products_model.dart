import 'dart:io';

import 'package:fruits_hub/core/models/review_model.dart';

class ProductsModel {
  final String name;
  final String description;
  final String code;
  final num price;
  final File image;
  String? imageUrl;
  final bool isFeatured;
  final int expirationMonths;
  bool isOrganic = false;
  final int numOfCalories;
  final int unitAmount;
  final num avgRating = 0;
  final num ratingCount = 0;
  final num sellingCount;
  final List<ReviewModel> reviews;
  ProductsModel({
    required this.sellingCount,
    required this.name,
    required this.description,
    required this.code,
    required this.price,
    required this.image,
    this.imageUrl,
    required this.isFeatured,
    required this.expirationMonths,
    required this.numOfCalories,
    required this.unitAmount,
    required this.isOrganic,
    required this.reviews,
  });
  // factory ProductsModel.fromEntity(ProductsEntity productsEntity) {
  //   return ProductsModel(
  //     name: productsEntity.name,
  //     description: productsEntity.description,
  //     code: productsEntity.code,
  //     price: productsEntity.price,
  //     image: productsEntity.image,
  //     isFeatured: productsEntity.isFeatured,
  //     imageUrl: productsEntity.imageUrl,
  //     expirationMonths: productsEntity.expirationMonths,
  //     numOfCalories: productsEntity.numOfCalories,
  //     unitAmount: productsEntity.unitAmount,
  //     isOrganic: productsEntity.isOrganic,
  // reviews: productsEntity.reviews
  //     .map((e) => ReviewModel.fromEntity(e))
  //     .toList(),
  //   );
  // }
  factory ProductsModel.fromJson(json) {
    return ProductsModel(
      sellingCount: json['sellingCount'],
      name: json['name'],
      description: json['description'],
      code: json['code'],
      price: json['price'],
      image: json['image'],
      isFeatured: json['isFeatured'],
      expirationMonths: json['expirationMonths'],
      numOfCalories: json['numOfCalories'],
      unitAmount: json['unitAmount'],
      isOrganic: json['isOrganic'],
      reviews: json['reviews'] != null
          ? List<ReviewModel>.from(
              /// مش فاهمة
              json['reviews'].map((e) => ReviewModel.fromJson(e)),
            )
          : [],
    );
  }
  toMap() {
    return {
      'name': name,
      'description': description,
      'code': code,
      'price': price,
      // 'image': image,
      'isFeatured': isFeatured,
      'imageUrl': imageUrl,
      'expirationMonths': expirationMonths,
      'numOfCalories': numOfCalories,
      'unitAmount': unitAmount,
      'isOrganic': isOrganic,
      'reviews': reviews.map((e) => e.toJson()).toList(),
      'selling count': sellingCount,
    };
  }
}
