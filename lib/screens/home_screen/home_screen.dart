import 'package:e_commerce/constant/media_query_values.dart';
import 'package:e_commerce/screens/home_screen/populars.dart';

import 'package:e_commerce/screens/home_screen/special_offers.dart';

import 'package:flutter/material.dart';

import 'categories.dart';
import 'home_header.dart';
import 'sales_container.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 20 / 375 * context.width,
            ),
            const HomeHeader(),
            SizedBox(
              height: 20 / 375 * context.width,
            ),
            const ContainerWithAvatar(),
            SizedBox(
              height: 20 / 375 * context.width,
            ),
            const Categories(),
            SizedBox(
              height: 20 / 375 * context.width,
            ),
            const SpecialOffers(),
            SizedBox(
              height: 20 / 375 * context.width,
            ),
            const Populars()
          ],
        ),
      ),
    ));
  }
}
