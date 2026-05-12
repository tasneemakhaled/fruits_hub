import 'package:fruits_hub/core/entities/products_entity.dart';
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

  bool isItemExists(ProductsEntity productsEntity) {
    for (var cartItem in cartEntites) {
      if (cartItem.productsEntity == productsEntity) {
        return true;
      }
    }
    return false;
  }

  CartItemEntity getCartItemEntity(ProductsEntity productsEntity) {
    for (var cartItem in cartEntites) {
      if (cartItem.productsEntity == productsEntity) {
        return cartItem;
      }
    }
    return CartItemEntity(productsEntity: productsEntity, count: 1);
  }

  double calculateTotalPrice() {
    double totalPrice = 0;
    for (var element in cartEntites) {
      totalPrice += element.calculateTotalPrice();
    }
    return totalPrice;
  }
}
