import 'package:e_commerce/constant/media_query_values.dart';
import 'package:flutter/material.dart';

import '../constant/app_constant.dart';

class IconBtnWithCounter extends StatelessWidget {
  const IconBtnWithCounter({
    super.key,
    required this.icon,
    required this.onPress,
    this.number,
  });
  final Icon icon;
  final VoidCallback onPress;
  final int? number;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPress,
      borderRadius: BorderRadius.circular(50),
      child: Stack(
        children: [
          Container(
            padding: EdgeInsets.all(
              12 / 375 * context.width,
            ),
            height: 46 / 375 * context.width,
            width: 46 / 375 * context.width,
            decoration: BoxDecoration(
                color: AppColors.hintColor, shape: BoxShape.circle),
            child: icon,
          ),
          if (number != 0)
            Positioned(
                top: -3,
                right: 0,
                child: Container(
                  height: 16 / 375 * context.width,
                  width: 16 / 375 * context.width,
                  decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 247, 2, 2),
                      shape: BoxShape.circle,
                      border: Border.all(width: 1.0, color: Colors.white)),
                  child: Center(
                    child: Text(
                      '$number',
                      style: TextStyle(
                          height: 1,
                          fontSize: 10 / 375 * context.width,
                          color: Colors.white,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                ))
        ],
      ),
    );
  }
}
