import 'package:e_commerce/Widgets/back_button.dart';
import 'package:e_commerce/constant/app_constant.dart';
import 'package:e_commerce/constant/media_query_values.dart';
import 'package:e_commerce/cubit/app_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../model/user.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AppCubit, AppStates>(
      listener: (context, state) {},
      builder: (context, state) {
        AppCubit appCubit = AppCubit.get(context);
        return Scaffold(
          body: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.all(context.width * 10 / 375),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const MyBackButton(),
                      Text(
                        'Profile',
                        style: TextStyle(
                            color: AppColors.primaryColor,
                            fontSize: context.textScaleFactor * 20,
                            fontFamily: 'Gameplay'),
                      ),
                      SizedBox(
                        width: context.width * 40 / 375,
                        height: context.width * 40 / 375,
                      )
                    ],
                  ),
                ),
                Stack(
                  children: [
                    CircleAvatar(
                      radius: 60,
                      backgroundImage: AssetImage(demoUser.img),
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: Positioned(
                          bottom: -3,
                          // top: -3,
                          right: 6,
                          // left: 6,
                          child: Container(
                            height: 35 / 375 * context.width,
                            width: 35 / 375 * context.width,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                shape: BoxShape.circle,
                                border: Border.all(
                                    width: 1.5,
                                    color: AppColors.secondaryColor)),
                            child: Center(
                                child: Icon(
                              Icons.camera_alt_outlined,
                              color: AppColors.primaryColor,
                            )),
                          )),
                    ),
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                ProfileContainer(
                  leftIcon: Icons.arrow_forward,
                  onTap: () {},
                  rightIcon: Icons.person_outline,
                  text: 'My Account',
                ),
                ProfileContainer(
                  leftIcon: Icons.arrow_forward,
                  onTap: () {},
                  rightIcon: Icons.notifications_outlined,
                  text: 'Notifications',
                ),
                ProfileContainer(
                  leftIcon: Icons.arrow_forward,
                  onTap: () {},
                  rightIcon: Icons.settings_outlined,
                  text: 'Settings',
                ),
                ProfileContainer(
                  leftIcon: Icons.arrow_forward,
                  onTap: () {},
                  rightIcon: Icons.help_outline,
                  text: 'Help Center',
                ),
                ProfileContainer(
                  leftIcon: Icons.arrow_forward,
                  onTap: () {},
                  rightIcon: Icons.logout_outlined,
                  text: 'Log Out',
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}

class ProfileContainer extends StatelessWidget {
  const ProfileContainer({
    super.key,
    required this.onTap,
    required this.leftIcon,
    required this.text,
    required this.rightIcon,
  });

  final VoidCallback onTap;
  final IconData leftIcon;
  final String text;
  final IconData rightIcon;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
          bottom: context.width * 15 / 375,
          right: context.width * 15 / 375,
          left: context.width * 15 / 375),
      child: InkWell(
        onTap: onTap,
        child: SizedBox(
          height: context.width * 60 / 375,
          child: Container(
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(25),
                border:
                    Border.all(width: 1.5, color: AppColors.secondaryColor)),
            child: Padding(
              padding:
                  EdgeInsets.symmetric(horizontal: context.width * 15 / 375),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      rightIcon,
                      color: AppColors.primaryColor,
                      size: context.width * 30 / 375,
                    ),
                    Text(
                      text,
                      style: TextStyle(
                          fontSize: context.textScaleFactor * 17,
                          color: AppColors.primaryColor,
                          fontFamily: 'Gameplay'),
                    ),
                    SizedBox(),
                    SizedBox(),
                    Icon(
                      leftIcon,
                      color: AppColors.primaryColor,
                      size: context.width * 30 / 375,
                    ),
                  ]),
            ),
          ),
        ),
      ),
    );
  }
}
