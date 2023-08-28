import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:grocery_app/items/categories.dart';
import 'package:grocery_app/widgets/fruitcontainer.dart';

import '../widgets/smallcontainer.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      appBar: AppBar(
        actions: [
          IconButton(
            icon: Icon(Icons.notifications),
            color: Colors.grey,
            onPressed: () {},
          )
        ],
        elevation: 0,
        backgroundColor: Colors.white,
        title: const Column(
          children: [
            Text(
              'Good Morning',
              style: TextStyle(color: Colors.grey, fontSize: 10),
            ),
            const SizedBox(
              height: 20,
            ),
            Text('Fidel AHM',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold))
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.all(20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Categories',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.bold)),
                  InkWell(
                    child: Icon(Icons.arrow_forward),
                    onTap: () {
                      Get.to(() => const CategoryPart());
                    },
                  )
                ],
              ),
            ),
            Container(
              width: 400,
              height: 70,
              child: ListView.builder(
                  itemCount: 10,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Categories(
                        image: Image.asset('assets/banana.png'),
                      ),
                    );
                  }),
            ),
            const Padding(
              padding: EdgeInsets.all(10.0),
              child: Text('Latest Products',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold)),
            ),
            const SizedBox(
              height: 0,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 20, 20, 10),
              child: Row(
                children: [
                  FruitContainer(),
                  const SizedBox(width: 30),
                  FruitContainer(),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 20, 20, 10),
              child: Row(
                children: [
                  FruitContainer(),
                  const SizedBox(width: 30),
                  FruitContainer(),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 20, 20, 10),
              child: Row(
                children: [
                  FruitContainer(),
                  const SizedBox(width: 30),
                  FruitContainer(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
