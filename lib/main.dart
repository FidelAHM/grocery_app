import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:grocery_app/splashscreen/splashscreen.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        debugShowCheckedModeBanner: false,
        home:  SplashScreen(),
        initialRoute: '/home',
        routes: {
          '/home': (context) => SplashScreen(),
        });
  }
}


  
