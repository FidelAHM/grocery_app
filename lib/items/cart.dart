import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:grocery_app/thankyou.dart';
import 'package:grocery_app/widgets/cartcontainer.dart';

class Cart extends StatefulWidget {
  const Cart({super.key});

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  int counter = 0;

  void incrementCounter() {
    setState(() {
      counter++;
    });
  }

  void decrementCounter() {
    setState(() {
      if (counter > 0) {
        counter--;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      body: SingleChildScrollView(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.fromLTRB(20, 70, 20, 20),
                child: Text(
                  "Item detail",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
              ),
              Divider(),
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 10, 0, 0),
                child: Row(
                  children: [
                    CartContainer(),
                    SizedBox(
                      width: 20,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Fruits',
                          style: TextStyle(
                              color: Colors.grey,
                              // fontWeight: FontWeight.bold,
                              fontSize: 15),
                        ),
                        Text(
                          'Orange',
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          children: [
                            Text(
                              '\$' + '6',
                              style: TextStyle(
                                  color: Colors.orange,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20),
                            ),
                            SizedBox(
                              width: 50,
                            ),
                            Container(
                                width: 110,
                                height: 40,
                                decoration: BoxDecoration(
                                    color: Colors.grey.shade200,
                                    borderRadius: BorderRadius.circular(20)),
                                child: Row(
                                  children: [
                                    IconButton(
                                        onPressed: () {
                                          incrementCounter();
                                        },
                                        icon: Icon(Icons.add)),
                                    Text('$counter',
                                        style: TextStyle(fontSize: 15)),
                                    IconButton(
                                        onPressed: () {
                                          decrementCounter();
                                        },
                                        icon: Icon(Icons.remove)),
                                  ],
                                ))
                          ],
                        ),
                      ],
                    )
                  ],
                ),
              ),
              Divider(),
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 10, 0, 0),
                child: Row(
                  children: [
                    CartContainer(),
                    SizedBox(
                      width: 20,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Fruits',
                          style: TextStyle(
                              color: Colors.grey,
                              // fontWeight: FontWeight.bold,
                              fontSize: 15),
                        ),
                        Text(
                          'Orange',
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          children: [
                            Text(
                              '\$' + '6',
                              style: TextStyle(
                                  color: Colors.orange,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20),
                            ),
                            SizedBox(
                              width: 50,
                            ),
                            Container(
                                width: 110,
                                height: 40,
                                decoration: BoxDecoration(
                                    color: Colors.grey.shade200,
                                    borderRadius: BorderRadius.circular(20)),
                                child: Row(
                                  children: [
                                    IconButton(
                                        onPressed: () {
                                          incrementCounter();
                                        },
                                        icon: Icon(Icons.add)),
                                    Text('$counter',
                                        style: TextStyle(fontSize: 15)),
                                    IconButton(
                                        onPressed: () {
                                          decrementCounter();
                                        },
                                        icon: Icon(Icons.remove)),
                                  ],
                                ))
                          ],
                        ),
                      ],
                    )
                  ],
                ),
              ),
              Divider(),
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 10, 0, 0),
                child: Row(
                  children: [
                    CartContainer(),
                    SizedBox(
                      width: 20,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Fruits',
                          style: TextStyle(
                              color: Colors.grey,
                              // fontWeight: FontWeight.bold,
                              fontSize: 15),
                        ),
                        Text(
                          'Orange',
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          children: [
                            Text(
                              '\$' + '6',
                              style: TextStyle(
                                  color: Colors.orange,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20),
                            ),
                            SizedBox(
                              width: 50,
                            ),
                            Container(
                                width: 110,
                                height: 40,
                                decoration: BoxDecoration(
                                    color: Colors.grey.shade200,
                                    borderRadius: BorderRadius.circular(20)),
                                child: Row(
                                  children: [
                                    IconButton(
                                        onPressed: () {
                                          incrementCounter();
                                        },
                                        icon: Icon(Icons.add)),
                                    Text('$counter',
                                        style: TextStyle(fontSize: 15)),
                                    IconButton(
                                        onPressed: () {
                                          decrementCounter();
                                        },
                                        icon: Icon(Icons.remove)),
                                  ],
                                ))
                          ],
                        ),
                      ],
                    )
                  ],
                ),
              ),
              Divider(),
              const SizedBox(
                height: 40,
              ),
              const Center(
                child: Text(
                  'Total \$ 6',
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Align(
                alignment: Alignment(0.2, 1.0),
                child: SizedBox(
                  height: 40,
                  width: 300,
                  child: ElevatedButton(
                    child: Text(
                      'Place Order',
                      style: TextStyle(fontSize: 15, color: Colors.white),
                    ),
                    onPressed: () {
                      setState(() {
                        Get.to(() => ThankYou());
                      });
                    },
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
                  ),
                ),
              ),
            ]),
      ),
    );
  }
}
