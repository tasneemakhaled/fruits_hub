import 'package:dartz/dartz.dart';
import 'package:fruits_hub/core/entities/products_entity.dart';
import 'package:fruits_hub/core/errors/failure.dart';
import 'package:fruits_hub/core/models/products_model.dart';
import 'package:fruits_hub/core/repos/products_repo.dart';
import 'package:fruits_hub/core/services/data_base_service.dart';
import 'package:fruits_hub/core/utils/backend_endpoints.dart';

class ProductsRepoImpl implements ProductsRepo {
  final DataBaseService dataBaseService;

  ProductsRepoImpl({required this.dataBaseService});
  @override
  Future<Either<Failure, List<ProductsEntity>>> getProducts() async {
    try {
      var data =
          await dataBaseService.getData(path: BackendEndpoints.getProducts)
              as List<Map<String, dynamic>>;
      List<ProductsModel> products = data
          .map((e) => ProductsModel.fromJson(e))
          .toList();
      List<ProductsEntity> productEntities = products
          .map((e) => e.toEntity())
          .toList();
      return right(productEntities);
    } catch (e) {
      return Left(ServerFailure(errMessage: e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<ProductsEntity>>> getBestSellingProducts() async {
    try {
      var data =
          await dataBaseService.getData(
                query: {
                  'limit': 10,
                  'orderBy': 'sellingCount',
                  'descending': true,
                },
                path: BackendEndpoints.getProducts,
              )
              as List<Map<String, dynamic>>;
      List<ProductsModel> products = data
          .map((e) => ProductsModel.fromJson(e))
          .toList();
      List<ProductsEntity> productEntities = products
          .map((e) => e.toEntity())
          .toList();
      return right(productEntities);
    } catch (e) {
      return Left(ServerFailure(errMessage: e.toString()));
    }
  }
}
