import 'package:flutter/material.dart';
import 'package:fruits_hub/core/utils/app_colors.dart';
import 'package:fruits_hub/core/utils/app_text_styles.dart';

class CartProductItem extends StatelessWidget {
  const CartProductItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.network(
            width: 100,
            height: 100,
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRJPNwFZomwx7tvRUKd30ed0Xswtog77KrptA&s',
          ),
          Column(
            children: [
              Text('بطيخ', style: TextStyles.bold13),
              Text(
                '3كم',
                style: TextStyles.regular13.copyWith(color: Color(0xffF4A91F)),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: 24,
                    height: 24,
                    child: CircleAvatar(
                      backgroundColor: AppColors.darkPrimaryColor,
                      child: Center(
                        child: IconButton(
                          onPressed: () {},
                          icon: Icon(size: 12, Icons.add, color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                  Text('1'),
                  SizedBox(
                    width: 24,
                    height: 24,
                    child: CircleAvatar(
                      backgroundColor: Color(0xffF3F5F7),
                      child: Center(
                        child: IconButton(
                          onPressed: () {},
                          icon: Icon(
                            size: 12,
                            Icons.remove,
                            color: Color(0xff979899),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
          Column(
            children: [
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.delete_outline, color: Color(0xff949D9E)),
              ),
              Text(
                '60جنيه',
                style: TextStyles.bold13.copyWith(color: Color(0xffF4A91F)),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
