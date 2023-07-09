import 'package:e_commerce/constant/media_query_values.dart';
import 'package:flutter/Material.dart';

import '../constant/app_constant.dart';

class MyBackButton extends StatelessWidget {
  const MyBackButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: context.width * 40 / 375,
      height: context.width * 40 / 375,
      child: GestureDetector(
        onTap: () => Navigator.pop(context),
        child: Container(
          decoration: BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
              border: Border.all(width: 1.5, color: AppColors.secondaryColor)),
          child: Center(
            child: Icon(
              Icons.arrow_back_ios_new,
              color: AppColors.primaryColor,
            ),
          ),
        ),
      ),
    );
  }
}
