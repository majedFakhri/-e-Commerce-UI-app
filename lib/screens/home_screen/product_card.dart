import 'package:e_commerce/constant/media_query_values.dart';
import 'package:e_commerce/cubit/app_cubit.dart';
import 'package:flutter/Material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';

import '../../constant/app_constant.dart';
import '../../model/product.dart';
import '../details/details_screen.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({
    super.key,
    required this.product,
    required this.index,
    // required this.onTap,
  });

  final Product product;
  final int index;
  // final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AppCubit, AppStates>(
      listener: (context, state) {},
      builder: (context, state) {
        AppCubit appCubit = AppCubit.get(context);
        return InkWell(
          onTap: () {
            appCubit.detailsSelectedImg = 0;
            appCubit.indexOfProduct(index);
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => DetailsScreen(
                        product: product,
                      )),
            );
          },
          child: Padding(
            padding: EdgeInsets.only(left: context.width * 20 / 375),
            child: SizedBox(
              width: context.width * 140 / 375,
              child: Column(
                children: [
                  AspectRatio(
                    aspectRatio: 1.02,
                    child: Container(
                      padding: EdgeInsets.all(context.width * 20 / 375),
                      decoration: BoxDecoration(
                        color: AppColors.hintColor,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: SvgPicture.asset(product.images[0]),
                    ),
                  ),
                  SizedBox(
                    height: context.height * 5 / 375,
                  ),
                  Text(
                    product.title,
                    style: TextStyle(
                        color: AppColors.primaryColor,
                        fontFamily: 'Gameplay',
                        fontSize: context.textScaleFactor * 7),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '\$${product.price}',
                        style: TextStyle(
                            color: AppColors.primaryColor,
                            fontFamily: 'Gameplay',
                            fontSize: context.textScaleFactor * 7),
                      ),
                      InkWell(
                        borderRadius: BorderRadius.circular(28),
                        onTap: () {},
                        child: Container(
                          padding: EdgeInsets.all(context.width * 8 / 375),
                          width: context.width * 28 / 375,
                          height: context.width * 28 / 375,
                          decoration: BoxDecoration(
                              color: AppColors.hintColor,
                              shape: BoxShape.circle),
                          child: SvgPicture.asset(
                            AppImages.gameSVG,
                            color:
                                product.isFavorite ? Colors.red : Colors.grey,
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
