import 'package:flutter/material.dart';

class FruitDescription extends StatefulWidget {
  const FruitDescription({super.key});

  @override
  State<FruitDescription> createState() => _FruitDescriptionState();
}

class _FruitDescriptionState extends State<FruitDescription> {
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
    return Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage(
                  'assets/or.jpeg',
                ),
                fit: BoxFit.cover)),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 250, 0, 0),
                  child: Container(
                    width: 380,
                    height: 600,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(30)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.fromLTRB(20, 20, 20, 0),
                          child: Row(
                            children: [
                              const Text(
                                'Fresh Orange',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold),
                              ),
                              const SizedBox(
                                width: 40,
                              ),
                              SizedBox(
                                height: 40,
                                width: 150,
                                child: ElevatedButton(
                                    style: ButtonStyle(
                                      backgroundColor:
                                          MaterialStateProperty.all<Color>(
                                              const Color.fromARGB(
                                                  255, 255, 189, 90)),
                                      shape: MaterialStateProperty.all(
                                        RoundedRectangleBorder(
                                          // Change your radius here
                                          borderRadius:
                                              BorderRadius.circular(30),
                                        ),
                                      ),
                                    ),
                                    onPressed: () {},
                                    child: Text('Add to cart')),
                              )
                            ],
                          ),
                        ),
                        SizedBox(height: 20),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(40, 10, 0, 20),
                          child: Row(
                            children: [
                              const Text(
                                '\$ 6',
                                style: TextStyle(
                                    color: Colors.orange,
                                    fontSize: 30,
                                    fontWeight: FontWeight.bold),
                              ),
                              const SizedBox(
                                width: 120,
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
                        ),
                        const Padding(
                          padding: EdgeInsets.all(20.0),
                          child: Text(
                            'Description',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        Divider(),
                        Text('get orange')
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
