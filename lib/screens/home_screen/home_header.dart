import 'package:flutter/material.dart';

import '../../Widgets/Icon_btn_with_counter.dart';
import '../../Widgets/search_field.dart';
import '../../constant/app_constant.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12),
      // padding: EdgeInsets.symmetric(horizontal: 20 / 375 * width),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          const SearchField(),
          IconBtnWithCounter(
            icon: Icon(
              Icons.shopping_cart_outlined,
              color: AppColors.primaryColor,
            ),
            number: 6,
            onPress: () {},
          ),
          IconBtnWithCounter(
            icon: Icon(Icons.notifications_none, color: AppColors.primaryColor),
            number: 3,
            onPress: () {},
          )
        ],
      ),
    );
  }
}
