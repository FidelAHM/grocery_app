import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:grocery_app/items/homescreen.dart';

import 'home/bottomnavigationbar.dart';

class ThankYou extends StatefulWidget {
  const ThankYou({super.key});

  @override
  State<ThankYou> createState() => _ThankYouState();
}

class _ThankYouState extends State<ThankYou> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const Padding(
            padding: EdgeInsets.fromLTRB(20, 80, 20, 0),
            child: Center(
              child: Text(
                'Thank You',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 30,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Divider(),
          Padding(
            padding: const EdgeInsets.fromLTRB(50, 50, 50, 40),
            child: Image.asset(
              'assets/carts.png',
              height: 200,
              width: 200,
            ),
          ),
          const Center(
            child: Text('Your Order is In Place, ',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold)),
          ),
          const SizedBox(
            height: 20,
          ),
          const Center(
            child: Text('thank you thank you thank you thank you  ',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                )),
          ),
          const SizedBox(
            height: 70,
          ),
          SizedBox(
            width: 300,
            height: 60,
            child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(
                      const Color.fromARGB(255, 255, 189, 90)),
                  shape: MaterialStateProperty.all(
                    RoundedRectangleBorder(
                      // Change your radius here
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                ),
                onPressed: () {
                  Get.to(() =>BottomNavigation());
                },
                child: Text('Go back to home')),
          ),
        ],
      ),
    );
  }
}
