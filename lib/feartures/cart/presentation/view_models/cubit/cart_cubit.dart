import 'package:bloc/bloc.dart';
import 'package:fruits_hub/core/entities/products_entity.dart';
import 'package:fruits_hub/feartures/cart/domain/entites/cart_entity.dart';
import 'package:fruits_hub/feartures/cart/domain/entites/cart_item_entity.dart';
import 'package:meta/meta.dart';

part 'cart_state.dart';

class CartCubit extends Cubit<CartState> {
  CartCubit() : super(CartInitial());
  CartEntity cartEntity = CartEntity(cartEntites: []);
  addItemToCart({required ProductsEntity productsEntity}) {
    var cartItemEntity = cartEntity.getCartItemEntity(productsEntity);
    if (cartEntity.isItemExists(productsEntity)) {
      cartItemEntity.increaseCount();
    } else {
      cartEntity.addItemToCart(cartItemEntity);
    }

    emit(CartItemAdded());
  }

  // removeItemFromCart({required CartItemEntity cartItemEntity}) {
  //   cartEntity.removeItemFromCart(cartItemEntity);
  //   emit(CartItemRemoved());
  // }
}
