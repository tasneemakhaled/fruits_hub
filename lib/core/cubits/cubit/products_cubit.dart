import 'package:bloc/bloc.dart';
import 'package:fruits_hub/core/entities/products_entity.dart';
import 'package:fruits_hub/core/repos/products_repo.dart';
import 'package:meta/meta.dart';

part 'products_state.dart';

class ProductsCubit extends Cubit<ProductsState> {
  ProductsCubit(this.productsRepo) : super(ProductsInitial());
  final ProductsRepo productsRepo;
  int productsLength = 0;
  Future<void> getProducts() async {
    emit(ProductsLoading());
    var products = await productsRepo.getProducts();
    products.fold(
      (failue) {
        print('🔴 FAILURE: ${failue.errMessage}');
        emit(ProductsFailure(errorMessage: failue.errMessage));
      },
      (products) {
        print('✅ SUCCESS: ${products.length} products');
        productsLength = products.length;
        emit(ProductsSuccess(products: products));
      },
    );
  }

  Future<void> getBestSellingProducts() async {
    emit(ProductsLoading());
    var products = await productsRepo.getBestSellingProducts();
    products.fold(
      (failue) {
        emit(ProductsFailure(errorMessage: failue.errMessage));
      },
      (products) {
        emit(ProductsSuccess(products: products));
      },
    );
  }
}
