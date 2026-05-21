import 'package:fruits_hub/feartures/cart/domain/entites/cart_entity.dart';
import 'package:fruits_hub/feartures/cart/domain/entites/cart_item_entity.dart';
import 'package:fruits_hub/feartures/checkout/domain/entities/address_entity.dart';

class OrderEntity {
  final CartEntity cartEntity;
  bool? payWithCash;
  AddressEntity? addressEntity = AddressEntity();

  OrderEntity({required this.cartEntity, this.payWithCash, this.addressEntity});
}
