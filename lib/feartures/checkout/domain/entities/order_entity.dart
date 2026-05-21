import 'package:fruits_hub/feartures/cart/domain/entites/cart_item_entity.dart';
import 'package:fruits_hub/feartures/checkout/domain/entities/address_entity.dart';

class OrderEntity {
  final List<CartItemEntity> cartItems;
  final bool payWithCash;
  final AddressEntity addressEntity;

  OrderEntity({
    required this.cartItems,
    required this.payWithCash,
    required this.addressEntity,
  });
}
