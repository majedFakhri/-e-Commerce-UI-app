import 'package:e_commerce/constant/media_query_values.dart';
import 'package:e_commerce/screens/home_screen/title_row.dart';
import 'package:flutter/Material.dart';

import '../../constant/app_constant.dart';

class SpecialOffers extends StatelessWidget {
  const SpecialOffers({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TitleRow(
          onPress: () {},
          text: 'Special For You',
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 15 / 375 * context.width),
                child: SpecialOfferCard(
                  image: AppImages.homeSpecial1,
                  category: 'Inner Parts',
                  numOfBrand: '18',
                  onPress: () {},
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 15 / 375 * context.width),
                child: SpecialOfferCard(
                  image: AppImages.homeSpecial2,
                  category: 'Desktop',
                  numOfBrand: '23',
                  onPress: () {},
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 15 / 375 * context.width),
                child: SpecialOfferCard(
                  image: AppImages.homeSpecial3,
                  category: 'Games',
                  numOfBrand: '35',
                  onPress: () {},
                ),
              ),
              SizedBox(
                width: context.width * 15 / 375,
              )
            ],
          ),
        ),
      ],
    );
  }
}

class SpecialOfferCard extends StatelessWidget {
  const SpecialOfferCard({
    super.key,
    required this.image,
    required this.category,
    required this.numOfBrand,
    required this.onPress,
  });

  final String image;
  final String category;
  final String numOfBrand;
  final VoidCallback onPress;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: SizedBox(
        height: 100 / 375 * context.width,
        width: 242 / 375 * context.width,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Stack(children: [
            Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: AppColors.primaryColor,
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: AppColors.primaryColor,
                  ),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(
                  child: Image.asset(
                    image,
                    fit: BoxFit.cover,
                  ),
                ),
                // Container(
                //   width: 242 / 750 * context.width,
                //   height: 100 / 375 * context.width,
                //   decoration: BoxDecoration(
                //     color: AppColors.primaryColor,
                //   ),
                // )
              ],
            ),
            Container(
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                    const Color(0xff343434).withOpacity(0.5),
                    const Color(0xff343434).withOpacity(0)
                  ])),
            ),
            Padding(
              padding: EdgeInsets.all(context.width * 18 / 375),
              child: Text.rich(TextSpan(
                  style: const TextStyle(
                      color: Colors.white, fontFamily: 'Gameplay'),
                  children: [
                    TextSpan(
                      text: '$category\n',
                      style: TextStyle(
                        fontSize: context.textScaleFactor * 18,
                      ),
                    ),
                    TextSpan(
                      text: '$numOfBrand Brand',
                      style: TextStyle(
                        fontSize: context.textScaleFactor * 14,
                      ),
                    )
                  ])),
            )
          ]),
        ),
      ),
    );
  }
}
