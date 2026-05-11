import 'package:fruits_hub/feartures/cart/domain/entites/cart_item_entity.dart';

class CartEntity {
  final List<CartItemEntity> cartEntites;

  CartEntity({required this.cartEntites});
  addItemToCart(CartItemEntity cartItemEntity) {
    cartEntites.add(cartItemEntity);
  }

  removeItemFromCart(CartItemEntity cartItemEntity) {
    cartEntites.remove(cartItemEntity);
  }
}
