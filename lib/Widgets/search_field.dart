import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../constant/app_constant.dart';

class SearchField extends StatelessWidget {
  const SearchField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: context.width * 0.6,
      height: 50,
      decoration: BoxDecoration(
          color: AppColors.hintColor, borderRadius: BorderRadius.circular(15)),
      child: TextField(
        onChanged: (value) {},
        decoration: InputDecoration(
            enabledBorder: InputBorder.none,
            focusedBorder: InputBorder.none,
            hintText: "Search",
            hintStyle: TextStyle(color: AppColors.primaryColor),
            prefixIcon: Icon(
              Icons.search,
              color: AppColors.primaryColor,
            ),
            contentPadding: EdgeInsets.symmetric(
                horizontal: 20 / 375 * context.width,
                vertical: 9 / 35 * context.width)),
      ),
    );
  }
}
