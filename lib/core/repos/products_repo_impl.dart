import 'package:dartz/dartz.dart';
import 'package:fruits_hub/core/entities/products_entity.dart';
import 'package:fruits_hub/core/errors/failure.dart';
import 'package:fruits_hub/core/repos/products_repo.dart';
import 'package:fruits_hub/core/services/data_base_service.dart';
import 'package:fruits_hub/core/utils/backend_endpoints.dart';

class ProductsRepoImpl implements ProductsRepo {
  final DataBaseService dataBaseService;

  ProductsRepoImpl({required this.dataBaseService});
  @override
  Future<Either<Failure, List<ProductsEntity>>> getProducts() async {
    var data = await dataBaseService.getData(
      path: BackendEndpoints.getProducts,
    );
    // TODO: implement getProducts
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, List<ProductsEntity>>> getBestSellingProducts() {
    // TODO: implement getBestSellingProducts
    throw UnimplementedError();
  }
}
