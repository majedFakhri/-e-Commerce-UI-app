import 'package:e_commerce/constant/app_constant.dart';
import 'package:e_commerce/screens/details/details_screen.dart';
import 'package:e_commerce/screens/home_screen/home_screen.dart';
import 'package:e_commerce/screens/home_screen/profile.dart/profile_screen.dart';
import 'package:e_commerce/screens/splash_screen.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'cubit/app_cubit.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MultiBlocProvider(providers: [
    BlocProvider<AppCubit>(create: (context) => AppCubit()),
  ], child: const GamersParadise()));
}

class GamersParadise extends StatelessWidget {
  const GamersParadise({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryColor: AppColors.primaryColor),
      home: const ProfileScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
