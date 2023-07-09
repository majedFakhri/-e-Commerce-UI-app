import 'package:e_commerce/constant/media_query_values.dart';
import 'package:e_commerce/screens/home_screen/product_card.dart';
import 'package:e_commerce/screens/home_screen/title_row.dart';
import 'package:flutter/Material.dart';

import '../../model/product.dart';

class Populars extends StatelessWidget {
  const Populars({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TitleRow(
          onPress: () {},
          text: 'Popular ',
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              ...List.generate(
                  demoProducts.length,
                  (index) => ProductCard(
                        product: demoProducts[index],
                        index: index,
                      )),
              SizedBox(
                width: 20 / 375 * context.width,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
