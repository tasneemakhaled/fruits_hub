import 'package:dartz/dartz.dart';
import 'package:fruits_hub/core/entities/products_entity.dart';
import 'package:fruits_hub/core/errors/failure.dart';

abstract class ProductsRepo {
  Future<Either<Failure, List<ProductsEntity>>> getProducts();
  Future<Either<Failure, List<ProductsEntity>>> getBestSellingProducts();
}
