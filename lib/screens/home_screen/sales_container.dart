import 'package:e_commerce/constant/media_query_values.dart';
import 'package:flutter/Material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../constant/app_constant.dart';

class ContainerWithAvatar extends StatelessWidget {
  const ContainerWithAvatar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20 / 375 * context.width),
      padding: EdgeInsets.symmetric(
          horizontal: 15 / 375 * context.width,
          vertical: 12 / 375 * context.width),
      width: double.infinity,
      height: 90,
      decoration: BoxDecoration(
          color: AppColors.primaryColor,
          borderRadius: BorderRadius.circular(20)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text.rich(
            TextSpan(
                text: 'the great app\n',
                style: TextStyle(
                    color: AppColors.secondaryColor,
                    // fontWeight: FontWeight.bold,
                    fontFamily: 'Gameplay',
                    fontSize: context.textScaleFactor * 13),
                children: [
                  TextSpan(
                    text: 'the great app',
                    style: TextStyle(
                        color: AppColors.secondaryColor,
                        fontSize: context.textScaleFactor * 20),
                  )
                ]),
          ),
          CircleAvatar(
              radius: context.width * 35 / 375,
              backgroundColor: Colors.white,
              child: SvgPicture.asset(AppImages.sales)),
        ],
      ),
    );
  }
}
