import 'package:flutter/material.dart';

class CartContainer extends StatelessWidget {
  const CartContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 70,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
            'assets/orio.png',
          ),
        ),
        borderRadius: BorderRadius.circular(20),
        color: Colors.white,
      ),
    );
  }
}
