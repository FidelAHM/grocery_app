import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';

import '../Auth/signin.dart';


class SplashScreen  extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return  AnimatedSplashScreen(
        backgroundColor: Colors.orange,
        splash: Image.asset(
          'assets/orange.png',
          width: 300,
          height: 300,
        ),
      
        
         splashTransition: SplashTransition.fadeTransition,
     
        nextScreen: (SignIn()));
  }
}