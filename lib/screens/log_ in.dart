import 'package:e_commerce/Widgets/my_button.dart';
import 'package:e_commerce/constant/app_constant.dart';
import 'package:e_commerce/screens/home_screen/home_screen.dart';
import 'package:e_commerce/screens/on_boarding_screen/on_boarding.dart';
import 'package:flutter/material.dart';

class LogInScreen extends StatelessWidget {
  const LogInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            // const SizedBox(),
            Image.asset('assets/images/logo1.png'),
            Text(
              'Gamers Paradise',
              style: TextStyle(
                  color: AppColors.primaryColor,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Gameplay',
                  shadows: [
                    Shadow(
                        color: AppColors.secondaryColor,
                        offset: const Offset(4, 7))
                  ]),
            ),
            // const SizedBox(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                MyButton(
                  onTap: () => Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (_) => const HomeScreen()),
                  ),
                  width: 150,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Log in with",
                          style: TextStyle(
                              color: AppColors.primaryColor,
                              fontWeight: FontWeight.bold)),
                      const Icon(Icons.facebook),
                    ],
                  ),
                ),
                MyButton(
                  onTap: () {},
                  width: 150,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Log in with",
                        style: TextStyle(
                            color: AppColors.primaryColor,
                            fontWeight: FontWeight.bold),
                      ),
                      const Icon(Icons.g_mobiledata_rounded),
                    ],
                  ),
                )
              ],
            ),
            const SizedBox(),
          ],
        ),
      ),
      //   TextButton(
      //       onPressed: () => goToHome(context), child: const Text('back')),
    );
  }
}

void goToHome(context) => Navigator.of(context).pushReplacement(
      MaterialPageRoute(builder: (_) => const OnBoarding()),
    );
