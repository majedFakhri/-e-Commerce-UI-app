import 'package:e_commerce/constant/app_constant.dart';
import 'package:flutter/material.dart';

import 'package:introduction_screen/introduction_screen.dart';

import '../log_ in.dart';

class OnBoarding extends StatelessWidget {
  const OnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: IntroductionScreen(
        pages: [
          PageViewModel(
            title: 'Enjoy your premium workstation',
            body: 'A wide variety to suit your passion.',
            image: Image.asset(AppImages.onboarding1, width: 350),
            decoration: getPageDecoration(),
          ),
          PageViewModel(
            title: 'Whatever you need',
            body: 'The latest parts, devices and equipment in your hands',
            image: Image.asset(AppImages.onboarding2, width: 350),
            decoration: getPageDecoration(),
          ),
          PageViewModel(
            title: 'Daily offers and discounts',
            body: 'Discounted prices daily in addition to many offers',
            image: Image.asset(AppImages.onboarding3, width: 350),
            decoration: getPageDecoration(),
          ),
          PageViewModel(
            title: 'Secure shopping and easy payment',
            body:
                'Enjoy a convenient shopping experience away from fraud and ads',
            //Start your journey
            image: Image.asset(
              AppImages.onboarding4,
              width: 350,
            ),
            decoration: getPageDecoration(),
          ),
        ],
        done: Text('Start',
            style: TextStyle(
                fontWeight: FontWeight.bold, color: AppColors.primaryColor)),
        onDone: () => Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (_) => const LogInScreen()),
        ),
        showSkipButton: true,
        skip: Text('Skip', style: TextStyle(color: AppColors.primaryColor)),
        onSkip: () => Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (_) => const LogInScreen()),
        ),
        next: Icon(Icons.arrow_forward, color: AppColors.primaryColor),
        dotsDecorator: getDotDecoration(),
        // onChange: (index) => print('Page $index selected'),
        globalBackgroundColor: Colors.white,
        skipOrBackFlex: 0,
        nextFlex: 0,
        animationDuration: 800,
        bodyPadding: const EdgeInsets.only(top: 30),
        // isProgressTap: false,
        // isProgress: false,
        // showNextButton: false,
        // freeze: true,
      ),
    );
  }

  DotsDecorator getDotDecoration() => DotsDecorator(
        color: AppColors.primaryColor,
        activeColor: AppColors.secondaryColor,
        size: const Size(10, 10),
        activeSize: const Size(22, 10),
        activeShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24),
        ),
      );

  PageDecoration getPageDecoration() => PageDecoration(
      titleTextStyle: TextStyle(
          fontSize: 28,
          fontWeight: FontWeight.bold,
          color: AppColors.primaryColor),
      bodyTextStyle: TextStyle(fontSize: 20, color: AppColors.primaryColor),
      // descriptionPadding: EdgeInsets.all(16).copyWith(bottom: 0),
      imagePadding: const EdgeInsets.all(5),
      pageColor: Colors.white,
      bodyPadding: const EdgeInsets.only(top: 30));
}
