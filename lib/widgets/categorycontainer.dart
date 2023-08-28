import 'package:flutter/material.dart';

class CategoryContainer extends StatelessWidget {
  const CategoryContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: BorderRadius.circular(20),
      elevation: 5,
      child: Container(
        height: 150,
        width: 150,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.white,
        ),
        child: Column(
          children: [
            Center(
              child: Image.asset(
                'assets/banana.png',
                width: 80,
                height: 80,
              ),
            ),
            Text(
              'Banana',
              style: TextStyle(color: Colors.orange),
            )
          ],
        ),
      ),
    );
  }
}
