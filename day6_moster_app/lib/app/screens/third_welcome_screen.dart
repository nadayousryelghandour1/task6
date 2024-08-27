import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:moster_app/app/screens/login_screen.dart';
import 'package:moster_app/app/screens/signin_screen.dart';

import '../widgets/my_sized_box.dart';

class ThirdWelcomeScreen extends StatelessWidget {
  const ThirdWelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF141414),
      body: SafeArea(
        top: true,
        child: Center(
          child:Column(
            children: [
              Stack(
                children: [

                  SvgPicture.asset(
                  'assets/images/pattern_1.svg',
                  width: 472,
                  height: 472,
                ),

                Positioned(
                  top: 44,
                  child: Image.asset(
                  'assets/images/illustration.png',
                  width: 375,
                  height: 416,
                ),)
                  
                ],
              ),

              mySizedBox(height: 24),
              const Text(
              'MONSTER LIVESCORE',
              style: TextStyle(
                fontSize: 36,
                color: Colors.white,
                fontFamily: 'Teko',
                fontWeight: FontWeight.w600,
              ),
            ),
            // const SizedBox(height: 16),
            mySizedBox(height: 16),
            const SizedBox(
              width: 311,
              child: Text(
                'We’d like to check that your preferences and details are accurate.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0xFF808696),
                  fontSize: 14,
                  letterSpacing: -0.1,
                ),
              ),
            ),
            // const SizedBox(height: 16),
            mySizedBox(height: 24),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return const LoginScreen();
                }));
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFFF8FE11),
                fixedSize: const Size(311, 48),
              ),
              child: const Text(
                'Login',
                style: TextStyle(
                  color: Color(0xFF141414),
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            mySizedBox(height: 16),
            
            Container(
              width: 311,
              height: 48,
              decoration: BoxDecoration(
                border: Border.all(
                  color: const Color(0xFFF8FE11),
                  width: 2.0,
                ),
                borderRadius: const BorderRadius.all(Radius.circular(30)),
              ),
              child: TextButton(
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return const SigninScreen();                
                }));
                },
                 child:const Text(
                'Sign for Monster Livescore',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                ),
              ),
                 ),
            ),
            ],
            ),
          )
        ),
    );
  }
}
