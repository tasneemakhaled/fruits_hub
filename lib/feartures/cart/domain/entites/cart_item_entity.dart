import 'package:equatable/equatable.dart';
import 'package:fruits_hub/core/entities/products_entity.dart';

class CartItemEntity extends Equatable {
  final ProductsEntity productsEntity;
  int count;

  CartItemEntity({required this.productsEntity, this.count = 0});
  num calculateTotalPrice() {
    return productsEntity.price * count;
  }

  num calculateTotalWeight() {
    return productsEntity.unitAmount * count;
  }

  increaseCount() {
    count++;
  }

  decreaseCount() {
    count--;
  }

  @override
  // TODO: implement props
  List<Object?> get props => ([productsEntity]); // to make comparison between 2 objects
}
