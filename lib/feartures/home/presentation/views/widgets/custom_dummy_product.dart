import 'dart:io';

import 'package:fruits_hub/core/entities/products_entity.dart';

final dummyProduct = ProductsEntity(
  name: 'Dummy',
  description: 'Dummy',
  code: 'DUMMY-000',
  price: 0.0,
  // image: File(''),
  isOrganic: false,
  isFeatured: false,
  expirationMonths: 0,
  numOfCalories: 0,
  unitAmount: 0,
  reviews: [],
);

final dummyProducts = List.generate(6, (_) => dummyProduct);
