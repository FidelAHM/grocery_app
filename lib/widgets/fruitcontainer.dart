import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../fruitdescription.dart';

class FruitContainer extends StatelessWidget {
  bool isPressed = false;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
          height: 180,
          width: 150,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.white,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              IconButton(
                icon: Icon(Icons.favorite_rounded),
                onPressed: () {
                  isPressed ? Colors.red : Colors.grey;
                },
              ),
              Center(
                child: Image.asset(
                  'assets/orio.png',
                  height: 80,
                  width: 80,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Orange',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                child: Row(
                  children: [
                    Text('\$' + '10'),
                    SizedBox(
                      width: 30,
                    ),
                    Text(
                      'Add to Cart',
                      style: TextStyle(color: Colors.red),
                    )
                  ],
                ),
              )
            ],
          )),
      onTap: () {
        Get.to(() => FruitDescription());
      },
    );
  }
}
