import 'package:e_commerce/model/product.dart';
import 'package:flutter/Material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'app_state.dart';

class AppCubit extends Cubit<AppStates> {
  AppCubit() : super(AppInitial());
  static AppCubit get(context) => BlocProvider.of(context);

  int? currentIndexOfProduct;
  String? productTitle, productDesc;
  List<String>? productImages;
  List<Color>? productColors;
  double? productRating, productPrice;
  bool? productIsFavorite, productIsPopular;
  int detailsSelectedImg = 0;

  void indexOfProduct(int index) {
    currentIndexOfProduct = index;
  }

  void detailsImg(index) {
    detailsSelectedImg = index;
    emit(RefreshUIAppState());
  }

  void detailFav(product) {
    product.isFavorite ? product.isFavorite = false : product.isFavorite = true;
    emit(RefreshUIAppState());
  }
  // void fillProductInfo() {
  //   productTitle = demoProducts[currentIndexOfProduct].title;
  //   productDesc = demoProducts[currentIndexOfProduct].description;
  //   productImages = demoProducts[currentIndexOfProduct].images;
  //   productColors = demoProducts[currentIndexOfProduct].colors;
  //   productRating = demoProducts[currentIndexOfProduct].rating;
  //   productPrice = demoProducts[currentIndexOfProduct].price;
  //   productIsFavorite = demoProducts[currentIndexOfProduct].isFavourite;
  //   productIsPopular = demoProducts[currentIndexOfProduct].isPopular;
  // }
}
