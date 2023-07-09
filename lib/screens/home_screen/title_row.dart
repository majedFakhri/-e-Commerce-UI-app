import 'package:e_commerce/constant/media_query_values.dart';
import 'package:flutter/Material.dart';

import '../../constant/app_constant.dart';

class TitleRow extends StatelessWidget {
  const TitleRow({
    super.key,
    required this.text,
    required this.onPress,
  });

  final String text;
  final VoidCallback onPress;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: 20 / 375 * context.width,
          vertical: 15 / 375 * context.width),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            text,
            style: TextStyle(
                color: AppColors.primaryColor,
                fontFamily: 'Gameplay',
                fontSize: context.textScaleFactor * 13),
          ),
          GestureDetector(
            onTap: onPress,
            child: Text(
              'See  more',
              style: TextStyle(
                  color: AppColors.primaryColor,
                  fontFamily: 'Gameplay',
                  fontSize: context.textScaleFactor * 13),
            ),
          )
        ],
      ),
    );
  }
}
