import 'package:e_commerce/constant/app_constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MyButton extends StatelessWidget {
  const MyButton({
    super.key,
    this.buttonColor,
    this.shadowColor,
    this.width,
    required this.child,
    required this.onTap,
  });
  final Color? buttonColor;
  final Color? shadowColor;
  final double? width;
  final Widget child;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(20),
      onTap: onTap,
      child: Ink(
        height: 40,
        width: width ?? 75,
        decoration: BoxDecoration(
            color: buttonColor ?? AppColors.secondaryColor,
            borderRadius: BorderRadius.circular(30),
            boxShadow: [
              BoxShadow(
                  color: shadowColor ?? AppColors.primaryColor,
                  spreadRadius: 1,
                  blurRadius: 3,
                  offset: const Offset(2, 2))
            ]),
        child: Center(child: child),
      ),
    );
  }
}
