import 'package:e_commerce/constant/media_query_values.dart';
import 'package:flutter/Material.dart';
import 'package:flutter_svg/svg.dart';

import '../../constant/app_constant.dart';

class Categories extends StatelessWidget {
  const Categories({super.key});

  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> categories = [
      {"icon": AppImages.computerSVG, "text": "SetUp"},
      {"icon": AppImages.consoleSVG, "text": "Console"},
      {"icon": AppImages.partsSVG, "text": "Parts"},
      {"icon": AppImages.laptopSVG, "text": "laptop"},
      {"icon": AppImages.gameSVG, "text": "Games"},
    ];
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20 / 375 * context.width),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ...List.generate(
              categories.length,
              (index) => CategoryCard(
                  icon: categories[index]["icon"],
                  text: categories[index]["text"],
                  onPress: () {}))
        ],
      ),
    );
  }
}

class CategoryCard extends StatelessWidget {
  const CategoryCard({
    super.key,
    required this.icon,
    required this.text,
    required this.onPress,
  });

  final String icon, text;
  final GestureTapCallback onPress;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPress,
      child: SizedBox(
        width: 55 / 375 * context.width,
        child: Column(
          children: [
            AspectRatio(
                aspectRatio: 1,
                child: Container(
                  padding: EdgeInsets.all(15 / 375 * context.width),
                  decoration: BoxDecoration(
                    color: AppColors.secondaryColor,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: SvgPicture.asset(
                    icon,
                  ),
                )),
            const SizedBox(
              height: 5,
            ),
            Text(text,
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: AppColors.primaryColor,
                    // fontWeight: FontWeight.bold,
                    fontFamily: 'Gameplay',
                    fontSize: context.textScaleFactor * 9))
          ],
        ),
      ),
    );
  }
}
