import 'package:e_commerce/constant/app_constant.dart';
import 'package:e_commerce/model/product.dart';

class User {
  final int id;
  final String firstName;
  final String lastName;
  final String address;
  final String email;
  final String password;
  final List<Product>? cart;
  final String img;

  User(
      {required this.id,
      required this.firstName,
      required this.lastName,
      required this.address,
      required this.email,
      required this.password,
      this.cart,
      required this.img});
}

User demoUser = User(
    id: 1,
    firstName: 'majed',
    lastName: 'fakhri',
    address: 'Hama Al-cornish',
    email: 'majedfakhri1082@gmail.com',
    password: '0000',
    img: AppImages.userPhoto);
