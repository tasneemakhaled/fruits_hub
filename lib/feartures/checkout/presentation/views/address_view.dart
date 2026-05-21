import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruits_hub/feartures/auth/presentation/views/widgets/custom_text_field.dart';
import 'package:fruits_hub/feartures/checkout/domain/entities/order_entity.dart';

class AddressView extends StatelessWidget {
  const AddressView({
    super.key,
    required this.formKey,
    required this.valueListenable,
  });
  final GlobalKey<FormState> formKey;
  final ValueListenable<AutovalidateMode> valueListenable;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: ValueListenableBuilder<AutovalidateMode>(
        valueListenable: valueListenable,
        builder: (context, value, child) => Form(
          key: formKey,
          autovalidateMode: value,
          child: Column(
            children: [
              SizedBox(height: 16),
              CustomTextField(
                hintText: 'الاسم كامل',
                onSaved: (value) {
                  context.read<OrderEntity>().addressEntity!.name = value;
                },
              ),
              SizedBox(height: 8),
              CustomTextField(
                hintText: ' البريد الإلكتروني',
                onSaved: (value) {
                  context.read<OrderEntity>().addressEntity!.email = value;
                },
              ),
              SizedBox(height: 8),
              CustomTextField(
                hintText: 'العنوان',
                onSaved: (value) {
                  context.read<OrderEntity>().addressEntity!.address = value;
                },
              ),
              SizedBox(height: 8),
              CustomTextField(
                hintText: 'المدينه',
                onSaved: (value) {
                  context.read<OrderEntity>().addressEntity!.city = value;
                },
              ),
              SizedBox(height: 8),
              CustomTextField(
                hintText: 'رقم الطابق , رقم الشقه ..',
                onSaved: (value) {
                  context.read<OrderEntity>().addressEntity!.addressDetails =
                      value;
                },
              ),
              SizedBox(height: 8),
              CustomTextField(
                hintText: 'رقم الهاتف',
                onSaved: (value) {
                  context.read<OrderEntity>().addressEntity!.phoneNumber =
                      value;
                },
              ),
              SizedBox(height: 8),
            ],
          ),
        ),
      ),
    );
  }
}
