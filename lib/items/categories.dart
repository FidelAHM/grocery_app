import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:grocery_app/home/bottomnavigationbar.dart';
import 'package:grocery_app/items/homescreen.dart';
import 'package:grocery_app/widgets/categorycontainer.dart';

class CategoryPart extends StatefulWidget {
  const CategoryPart({super.key});

  @override
  State<CategoryPart> createState() => _CategoryPartState();
}

class _CategoryPartState extends State<CategoryPart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.fromLTRB(20, 80, 10, 0),
            child: Row(
              children: [
                InkWell(
                  child: Icon(Icons.arrow_back),
                  onTap: () {
                    Get.to(() => BottomNavigation());
                  },
                ),
                SizedBox(
                  width: 50,
                ),
                Text(
                  'Categories',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Padding(
            padding: EdgeInsets.all(20.0),
            child: Row(
              children: [
                CategoryContainer(),
                SizedBox(
                  width: 20,
                ),
                CategoryContainer(),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.all(20.0),
            child: Row(
              children: [
                CategoryContainer(),
                SizedBox(
                  width: 20,
                ),
                CategoryContainer(),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.all(20.0),
            child: Row(
              children: [
                CategoryContainer(),
                SizedBox(
                  width: 20,
                ),
                CategoryContainer(),
              ],
            ),
          )
        ],
      ),
    );
  }
}
