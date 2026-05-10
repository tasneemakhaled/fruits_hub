import 'package:flutter/material.dart';
import 'package:fruits_hub/feartures/products/presentation/views/widgets/products_view_body.dart';

class ProductsView extends StatelessWidget {
  const ProductsView({super.key});
  static const routeName = 'products view';
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: ProductsViewBody());
  }
}
