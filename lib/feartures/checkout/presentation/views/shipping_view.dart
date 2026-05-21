import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruits_hub/feartures/checkout/domain/entities/order_entity.dart';
import 'package:fruits_hub/feartures/checkout/presentation/views/widgets/shipping_item.dart';

class ShippingView extends StatefulWidget {
  const ShippingView({super.key});

  @override
  State<ShippingView> createState() => _ShippingViewState();
}

int selectedIndex = -1;

class _ShippingViewState extends State<ShippingView>
    with AutomaticKeepAliveClientMixin {
  @override
  Widget build(BuildContext context) {
    var orderEntity = context.read<OrderEntity>();
    return Column(
      children: [
        ShippingItem(
          onTap: () {
            selectedIndex = 0;
            orderEntity.payWithCash = true;
            setState(() {});
          },
          isSelected: selectedIndex == 0,
          title: 'الدفع عند الاستلام',
          subTitle: 'التسليم من المكان',
          price:
              '${context.read<OrderEntity>().cartEntity.calculateTotalPrice() + 40} جنيه',
        ),
        SizedBox(height: 16),
        ShippingItem(
          onTap: () {
            selectedIndex = 1;
            orderEntity.payWithCash = false;
            setState(() {});
          },
          isSelected: selectedIndex == 1,
          title: 'اشتري الان وادفع لاحقا',
          subTitle: 'يرجي تحديد طريقه الدفع',
          price:
              '${context.read<OrderEntity>().cartEntity.calculateTotalPrice()} جنيه',
        ),
      ],
    );
  }

  @override
  // TODO: implement wantKeepAlive
  bool get wantKeepAlive => true;
}
