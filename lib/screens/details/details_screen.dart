import 'package:e_commerce/Widgets/my_button.dart';
import 'package:e_commerce/constant/app_constant.dart';
import 'package:e_commerce/constant/media_query_values.dart';
import 'package:e_commerce/cubit/app_cubit.dart';
import 'package:e_commerce/model/product.dart';
import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';

import '../../Widgets/back_button.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({
    super.key,
    required this.product,
  });
  final Product product;
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AppCubit, AppStates>(
      listener: (context, state) {},
      builder: (context, state) {
        AppCubit appCubit = AppCubit.get(context);
        return Scaffold(
          body: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.all(context.width * 15 / 375),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const MyBackButton(),
                      RatingContainer(product: product)
                    ],
                  ),
                ),
                SizedBox(
                  width: context.width * 150 / 375,
                  height: context.width * 150 / 375,
                  child: AspectRatio(
                      aspectRatio: 1,
                      child: SvgPicture.asset(
                          product.images[appCubit.detailsSelectedImg])),
                ),
                const SizedBox(height: 25),
                ImagesRow(product: product, appCubit: appCubit),
                const SizedBox(height: 25),
                ProductInfo(product: product, appCubit: appCubit),
                const SizedBox(height: 25),
                MyButton(
                    width: context.width * 200 / 375,
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: context.width * 15 / 375),
                      child: Text(
                        'Add To Cart',
                        style: TextStyle(
                            color: AppColors.primaryColor,
                            fontSize: context.textScaleFactor * 20,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    onTap: () {})
              ],
            ),
          ),
        );
      },
    );
  }
}

class ProductInfo extends StatelessWidget {
  const ProductInfo({
    super.key,
    required this.product,
    required this.appCubit,
  });

  final Product product;
  final AppCubit appCubit;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: context.width * 320 / 375,
      height: context.width * 200 / 375,
      decoration: BoxDecoration(
        border: Border.all(width: 1.5, color: AppColors.secondaryColor),
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Padding(
        padding: EdgeInsets.only(
            top: context.width * 15 / 375,
            bottom: context.width * 15 / 375,
            left: context.width * 15 / 375),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                product.title,
                style: TextStyle(
                    color: AppColors.primaryColor,
                    fontSize: context.textScaleFactor * 20),
                overflow: TextOverflow.fade,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    height: context.width * 40 / 375,
                    width: context.width * 40 / 375,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(15),
                          bottomLeft: Radius.circular(15)),
                      // shape: BoxShape.circle,
                      color: Color.fromARGB(255, 252, 198, 198),
                    ),
                    child: InkWell(
                      onTap: () {
                        appCubit.detailFav(product);
                      },
                      child: Icon(
                        Icons.favorite,
                        color: product.isFavorite ? Colors.red : Colors.white,
                        size: context.width * 25 / 375,
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.only(right: context.width * 15 / 375),
                child: Text(
                  product.description,
                  style: TextStyle(
                      color: AppColors.hintColor,
                      fontSize: context.textScaleFactor * 12),
                  overflow: TextOverflow.clip,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {},
                    child: Text(
                      "See more  details",
                      style: TextStyle(
                          color: AppColors.secondaryColor,
                          fontSize: context.textScaleFactor * 12),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: context.width * 15 / 375),
                    child: Text(
                      product.price.toString(),
                      style: TextStyle(
                          fontSize: context.textScaleFactor * 20,
                          color: AppColors.primaryColor),
                    ),
                  ),
                ],
              )
            ]),
      ),
    );
  }
}

class ImagesRow extends StatelessWidget {
  const ImagesRow({
    super.key,
    required this.product,
    required this.appCubit,
  });

  final Product product;
  final AppCubit appCubit;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ...List.generate(
          product.images.length,
          (index) => Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: context.width * 50 / 375,
              width: context.width * 50 / 375,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.white,
                  border: Border.all(
                    color: index == appCubit.detailsSelectedImg
                        ? AppColors.secondaryColor
                        : Colors.white,
                  )),
              child: InkWell(
                onTap: () {
                  appCubit.detailsImg(index);
                },
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SvgPicture.asset(product.images[index]),
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}

class RatingContainer extends StatelessWidget {
  const RatingContainer({
    super.key,
    required this.product,
  });

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: SizedBox(
        width: context.width * 60 / 375,
        height: context.width * 40 / 375,
        child: Container(
          decoration: BoxDecoration(
              border: Border.all(width: 1.5, color: AppColors.secondaryColor),
              color: Colors.white,
              borderRadius: BorderRadius.circular(25)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.star,
                color: Colors.yellow,
                size: context.width * 18 / 375,
              ),
              Text(
                product.rating.toString(),
                style: TextStyle(
                    color: Colors.black, fontSize: context.width * 15 / 375),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
